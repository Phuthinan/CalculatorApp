import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import '../utils/app_color.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius: 20,
            offset: Offset(10, 10),
            inset: true),
        BoxShadow(
            color: const Color(0xFF202020),
            blurRadius: 20,
            offset: Offset(-10, -10),
            inset: true),
      ]),
      margin: EdgeInsets.all(24),
      padding: EdgeInsets.only(top: 30, left: 17, right: 21, bottom: 9),
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Text("12345679 x 9",
              style: TextStyle(
                  color: AppColors.greyColor,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 32))
        ]),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Ans =",
                style: TextStyle(
                    color: AppColors.greyColor,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 16)),
            Text("1,11,11,111,111",
                style: TextStyle(
                    color: AppColors.whiteColor,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 35))
          ],
        )
      ]),
      height: 173,
    );
  }
}
