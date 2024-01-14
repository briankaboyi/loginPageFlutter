import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  final IconData icon;

  final String text;
  final Color? bgColor;
  final Color? textColor;
  final Color borderColor;

  ButtonWidget(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.text, this.bgColor, this.textColor, required this.borderColor});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390,
      height: 80,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 30.0,
              color: textColor,
            ),
            SizedBox(width: 18),
            Text(text, style: TextStyle(fontSize: 18,color: textColor)), // Use the provided text
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: bgColor,
            side: BorderSide(width: 1, color: borderColor)
        ),
      ),
    );
  }
}
