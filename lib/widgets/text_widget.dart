import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String value;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSiz;
  const TextWidget(
      {super.key,
      required this.value,
      required this.fontWeight,
      required this.fontSiz, required this.textColor});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      value,
      style: TextStyle(
          fontSize: fontSiz, fontWeight: fontWeight, color: textColor),
    );
  }
}
