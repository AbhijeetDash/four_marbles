import 'package:flutter/material.dart';

class WidgetCustomButton extends StatelessWidget {
  final Widget icon;
  final String text;
  final GestureTapCallback onPressed;
  const WidgetCustomButton({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(onPressed: onPressed, child: Row(
        children: [
          Expanded(flex: 1,child: icon,),
          Expanded(flex: 2,child: Center(child: Text(text)),)
        ],
      ))
    );
  }
}
