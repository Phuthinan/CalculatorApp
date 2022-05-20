import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class CalButtonPic extends StatelessWidget {
  final String text;
  double size;
  CalButtonPic({Key? key, required this.text, this.size = 35})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage(text),
            ))),
      ),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
                offset: Offset(10, 10),
                blurRadius: 20,
                color: Color.fromRGBO(0, 0, 0, 0.25)),
            BoxShadow(
                offset: Offset(-10, -10),
                blurRadius: 20,
                color: Color(0xFF202020))
          ]),
    );
  }
}
