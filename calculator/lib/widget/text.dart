import 'package:flutter/material.dart';

class TextSt extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  TextSt(
      {Key? key,
      this.size = 16,
      required this.text,
      this.color = const Color(0xFF747474)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: color,
            fontFamily: 'Poppins',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: size));
  }
}

class TextHis extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  TextHis(
      {Key? key,
      this.size = 16,
      required this.text,
      this.color = const Color(0xFF747474)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: TextAlign.start,
        style: TextStyle(
            color: color,
            fontFamily: 'Poppins',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: size));
  }
}
