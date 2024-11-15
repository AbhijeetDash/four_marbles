import 'package:flutter/material.dart';
import 'package:four_marbles/models/model.marble.dart';
import 'package:four_marbles/widgets/widget.marbleSpot.dart';

class BoardWidget extends StatefulWidget {
  final ValueKey<String> identityKey;
  final List<List<MarbleModel>> board;
  final Function(Offset offset) onPressed;

  const BoardWidget({super.key, required this.identityKey, required this.board, required this.onPressed});

  @override
  State<BoardWidget> createState() => _BoardWidgetState();
}

class _BoardWidgetState extends State<BoardWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      switchInCurve: Curves.linear,
      duration: const Duration(microseconds: 500),
      child: Stack(
        key: widget.identityKey,
        children: List<List<Widget>>.generate(4, (row) {
          return List<Widget>.generate(4, (column) {
            final position = widget.board[row][column];
            return AnimatedPositioned(
              curve: Curves.easeInOut,
              duration: const Duration(milliseconds: 500),
              left: column * 100.0,
              top: row * 100.0,
              child: MarbleSpotWidget(
                key: ValueKey('marble-$row-$column-${position.currentOffset}'),
                info: position,
                onPressed: () {
                  widget.onPressed(Offset(row.toDouble(), column.toDouble()));
                },
              ),
            );
          });
        }).expand((element) => element).toList(),
      ),
    );
  }
}
