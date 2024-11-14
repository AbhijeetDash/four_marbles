import 'package:flutter/material.dart';
import 'package:four_marbles/models/model.marble.dart';

class MarbleSpotWidget extends StatefulWidget {
  final MarbleModel info;

  final GestureTapCallback onPressed;

  const MarbleSpotWidget({
    super.key,
    required this.info,
    required this.onPressed,
  });

  @override
  State<MarbleSpotWidget> createState() => _MarbleSpotWidgetState();
}

class _MarbleSpotWidgetState extends State<MarbleSpotWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          border: Border.all(color: Colors.white)),
      child: RawMaterialButton(
        onPressed: () {
          widget.onPressed();
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: getMarbleColor()),
        ),
      ),
    );
  }

  Color getMarbleColor() {
    switch (widget.info.slotState) {
      case MarbleSlotState.white:
        return Colors.white;
      case MarbleSlotState.black:
        return Colors.black;
      case MarbleSlotState.empty:
        return Colors.transparent;
    }
  }
}
