import 'package:calculator/utils/app_color.dart';
import 'package:calculator/widget/screen.dart';
import 'package:flutter/material.dart';
import '../widget/CalButton.dart';
// import '../widget/button_cal.dart';

class Calculator extends StatefulWidget {
  bool isPhone;
  Calculator({Key? key, this.isPhone = true}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String amount = '';
  String ans = '';
  String keybtn = '';
  callback(varAmount, varAns) {
    setState(() {
      amount = varAmount;
      ans = varAns;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: widget.isPhone
          ? Container(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Screen(amount: amount, ans: ans),
                  Expanded(child: KeyPad(callback))
                ],
              ),
            )
          : Container(
              padding: EdgeInsets.all(8),
              child: Expanded(
                  child: Container(
                // padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      alignment: Alignment.topCenter,
                      child: Screen(amount: amount, ans: ans),

                      // color: Colors.white,
                    )),
                    Expanded(
                      child: Container(child: KeyPad(callback)),
                      // color: Colors.green,
                    )
                  ],
                ),
                // color: Colors.blue,
              ))),
    );
  }

  Widget KeyPad(Function callback) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonCal(text: "c", btnKey: "c", callback: callback),
            ButtonCal(text: "%", btnKey: "%", callback: callback),
            ButtonCal(
                text: "assets/button/calculator/Backspace.png",
                btnKey: "del",
                istext: false,
                callback: callback),
            ButtonCal(
                text: "assets/button/calculator/Divide.png",
                btnKey: "÷",
                istext: false,
                callback: callback),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonCal(text: "7", btnKey: "7", callback: callback),
            ButtonCal(text: "8", btnKey: "8", callback: callback),
            ButtonCal(text: "9", btnKey: "9", callback: callback),
            ButtonCal(
                text: "assets/button/calculator/X.png",
                btnKey: "×",
                istext: false,
                callback: callback),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonCal(text: "4", btnKey: "4", callback: callback),
            ButtonCal(text: "5", btnKey: "5", callback: callback),
            ButtonCal(text: "6", btnKey: "6", callback: callback),
            ButtonCal(
                text: "assets/button/calculator/Minus.png",
                btnKey: "-",
                istext: false,
                callback: callback),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonCal(text: "1", btnKey: "1", callback: callback),
            ButtonCal(text: "2", btnKey: "2", callback: callback),
            ButtonCal(text: "3", btnKey: "3", callback: callback),
            ButtonCal(
                text: "assets/button/calculator/Plus.png",
                btnKey: "+",
                istext: false,
                callback: callback),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonCal(text: "00", btnKey: "00", callback: callback),
            ButtonCal(text: "0", btnKey: "0", callback: callback),
            ButtonCal(text: ".", btnKey: ".", callback: callback),
            ButtonCal(
                text: "assets/button/calculator/Equals.png",
                btnKey: "=",
                istext: false,
                callback: callback),
          ],
        ),
      ],
    );
  }
}
