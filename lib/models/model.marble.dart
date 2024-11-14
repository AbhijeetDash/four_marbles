import 'package:flutter/material.dart';

enum MarbleSlotState { white, black, empty }

class MarbleModel {
  final Offset currentOffset;
  final MarbleSlotState slotState;

  MarbleModel({
    required this.currentOffset,
    required this.slotState,
  });
}
