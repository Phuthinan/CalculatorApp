import 'package:calculator/widget/text.dart';
import 'package:flutter/material.dart';

import 'button_pic.dart';

class UnitLogo extends StatelessWidget {
  final String address;
  final String text;
  UnitLogo({Key? key, required this.address, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CalButtonPic(text: address),
          SizedBox(height: 10),
          Container(width: 75, child: TextSt(text: text))
        ],
      ),
    );
  }
}
