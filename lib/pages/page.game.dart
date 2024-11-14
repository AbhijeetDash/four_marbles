import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:four_marbles/bloc/bloc.game.dart';
import 'package:four_marbles/bloc/events/event.game.dart';
import 'package:four_marbles/bloc/states/state.game.dart';
import 'package:four_marbles/widgets/widget.colorSelector.dart';
import 'package:four_marbles/widgets/widget.marbleSpot.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late GameBloc bloc;
  late Size size;

  @override
  void initState() {
    bloc = GameBloc(const InitialGameState());
    super.initState();
  }

  @override
  void didChangeDependencies() {
    size = MediaQuery.of(context).size;
    super.didChangeDependencies();
  }

  void addTapEvent(Offset position) {
    bloc.add(TapGameEvent(position));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game Page'),
      ),
      body: Center(
        child: SizedBox(
          width: 440,
          height: 440,
          child: BlocConsumer<GameBloc, GameState>(
            bloc: bloc,
            listener: (context, state) {},
            builder: (context, state) {
              if (state is InitialGameState) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  _showColorPickPopUp();
                });
              }

              if (state is GameBoardState) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: AnimatedSwitcher(
                    switchInCurve: Curves.easeInOut,
                    switchOutCurve: Curves.easeInOut,
                    duration: const Duration(milliseconds: 300),
                    child: GridView.builder(
                      key: ValueKey(state),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                      ),
                      itemBuilder: (context, index) {
                        // Calculate the row and column index from the linear index
                        int row = index ~/ 4;
                        int column = index % 4;
                        return MarbleSpotWidget(
                          onPressed: () {
                            bloc.add(TapGameEvent(
                                Offset(row.toDouble(), column.toDouble())));
                          },
                          info: state.board.boardState[row][column],
                        );
                      },
                      itemCount: 16,
                    ),
                  ),
                );
              }

              if (state is WinBoardState) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GridView.builder(
                        key: ValueKey(state),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                        ),
                        itemBuilder: (context, index) {
                          // Calculate the row and column index from the linear index
                          int row = index ~/ 4;
                          int column = index % 4;
                          return MarbleSpotWidget(
                            // Disabled the tap.
                            onPressed: () {},
                            info: state.board.boardState[row][column],
                          );
                        },
                        itemCount: 16,
                      ),
                    ),
                    Container(
                      width: size.width,
                      height: size.height,
                      color: Colors.brown.withOpacity(0.3),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${state.win.name.toUpperCase()} WON',
                                style: const TextStyle(fontSize: 32.0),
                              ),
                              const SizedBox(height: 20.0),
                              CircleAvatar(child: IconButton(onPressed: (){
                                bloc.add(InitialGameEvent());
                              }, icon: const Icon(Icons.replay),))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }

              return const Center(child: CircularProgressIndicator.adaptive());
            },
          ),
        ),
      ),
    );
  }

  _showColorPickPopUp() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return ColorSelector(
          bloc: bloc,
        );
      },
    );
  }
}
