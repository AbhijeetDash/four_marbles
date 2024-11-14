import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:four_marbles/bloc/events/event.game.dart';
import 'package:four_marbles/bloc/states/state.game.dart';
import 'package:four_marbles/main.dart';
import 'package:four_marbles/models/model.board.dart';
import 'package:four_marbles/models/model.marble.dart';
import 'package:four_marbles/services/service.engine.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  late BoardModel board;
  late List<List<MarbleModel>> game;
  late MarbleSlotState currentColor;

  late final EngineService engineService;

  GameBloc(super.initialState) {
    engineService = locator.get<EngineService>();

    on<InitialGameEvent>(handleGameInit);
    on<StartGameEvent>(handleStartGame);
    on<TapGameEvent>(handleTapEvent);
  }

  handleGameInit(event, emit){
    // Just need to emit this to reset the UI.
    emit(const InitialGameState());
  }

  handleStartGame(StartGameEvent event, emit) {
    // Make a new board.
    game = List.generate(4, (rowIndex) {
      return List.generate(4, (columnIndex) {
        return MarbleModel(
            currentOffset: Offset(rowIndex.toDouble(), columnIndex.toDouble()),
            slotState: MarbleSlotState.empty);
      });
    });

    currentColor = event.pOneColor;

    String timestamp = DateTime.now().toIso8601String();
    board = BoardModel(
        boardState: game, winner: WinState.none, timestamp: timestamp);
    emit(StartGameState(board: board, color: currentColor));
  }

  handleTapEvent(TapGameEvent event, Emitter<GameState> emit) async {
    final offset = event.position;
    final rowIndex = offset.dx.toInt();
    final columnIndex = offset.dy.toInt();

    if (game[rowIndex][columnIndex].slotState == MarbleSlotState.empty) {
      game[rowIndex][columnIndex] =
          MarbleModel(currentOffset: offset, slotState: currentColor);

      emit(MarbleAddState(board: board, color: currentColor));

      // Change the current color to the next one.
      if (currentColor == MarbleSlotState.black) {
        currentColor = MarbleSlotState.white;
      } else if (currentColor == MarbleSlotState.white) {
        currentColor = MarbleSlotState.black;
      }

      // Then rotate the rings.
      game = engineService.rotateInnerRing(game);
      game = engineService.rotateOuterRing(game);

      await Future.delayed(const Duration(seconds: 1));

      // Then check the win condition.
      MarbleSlotState? winResult = engineService.checkWinCondition(game);

      // In case someone won.
      if (winResult != null) {
        emit(WinBoardState(
            board: board,
            win: (winResult == MarbleSlotState.white
                ? WinState.white
                : WinState.black)));
        return;
      }

      // Emit the update state
      emit(UpdateBoardState(board: board, color: currentColor));
    }
  }
}
