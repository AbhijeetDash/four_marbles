import 'package:equatable/equatable.dart';
import 'package:four_marbles/models/model.board.dart';
import 'package:four_marbles/models/model.marble.dart';

abstract class GameState extends Equatable{
  const GameState();
}

class GameBoardState extends GameState {
  final BoardModel board;
  final MarbleSlotState color;

  const GameBoardState({required this.board, required this.color});
  
  @override
  List<Object?> get props => [board, color];
}

class InitialGameState extends GameState {
  const InitialGameState();

  @override
  List<Object?> get props => [];
}

class StartGameState extends GameBoardState {
  const StartGameState({required super.board, required super.color});
}

class MarbleAddState extends GameBoardState {
  const MarbleAddState({required super.board, required super.color});
}

class UpdateBoardState extends GameBoardState {
  const UpdateBoardState({required super.board, required super.color});
}

class WinBoardState extends GameState {
  final BoardModel board;
  final WinState win;

  const WinBoardState({required this.board, required this.win});

  @override
  List<Object?> get props => [board, win];
}
