import 'package:flutter/material.dart';
import 'package:four_marbles/bloc/bloc.game.dart';
import 'package:four_marbles/bloc/events/event.game.dart';
import 'package:four_marbles/models/model.marble.dart';

class ColorSelector extends StatefulWidget {
  final GameBloc bloc;
  const ColorSelector({
    super.key,
    required this.bloc,
  });

  @override
  State<ColorSelector> createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  // Default color for player one.
  Color selectedColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select a Color'),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              selectedColor = Colors.black;
              setState(() {});
            },
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black,
              child: selectedColor == Colors.black
                  ? const Icon(Icons.check, color: Colors.white)
                  : null,
            ),
          ),
          GestureDetector(
            onTap: () {
              selectedColor = Colors.white;
              setState(() {});
            },
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: selectedColor == Colors.white
                  ? const Icon(Icons.check, color: Colors.black)
                  : null,
            ),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Select'),
          onPressed: () {
            switch (selectedColor) {
              case Colors.black:
                widget.bloc.add(StartGameEvent(pOneColor: MarbleSlotState.black));
                break;
              case Colors.white:
                widget.bloc.add(StartGameEvent(pOneColor: MarbleSlotState.white));
                break;
            }

            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
