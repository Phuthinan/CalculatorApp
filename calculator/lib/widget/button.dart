import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class CalButton extends StatelessWidget {
  final String text;
  Color logocolor;
  double size;
  CalButton(
      {Key? key,
      required this.text,
      this.logocolor = const Color(0xFF747474),
      this.size = 35})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: logocolor,
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: size),
        ),
      ),
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
