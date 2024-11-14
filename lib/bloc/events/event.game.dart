import 'dart:ui';

import 'package:four_marbles/models/model.marble.dart';

abstract class GameEvent {}

class InitialGameEvent extends GameEvent {}

class StartGameEvent extends GameEvent {
  final MarbleSlotState pOneColor;

  StartGameEvent({required this.pOneColor});
}

// This adds a marble to a given position.
class TapGameEvent extends GameEvent {
  final Offset position;

  TapGameEvent(this.position);
}
