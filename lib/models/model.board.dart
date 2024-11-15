import 'package:four_marbles/models/model.marble.dart';

enum WinState {
  black,
  white,
  draw,
  none,
}

class BoardModel {
  final WinState winner;
  final String timestamp;
  final List<List<MarbleModel>> boardState;

  BoardModel({required this.boardState, required this.winner, required this.timestamp});
}