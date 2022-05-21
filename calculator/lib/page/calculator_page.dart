import 'package:calculator/utils/app_color.dart';
import 'package:calculator/widget/button.dart';
import 'package:calculator/widget/button_pic.dart';
import 'package:calculator/widget/screen.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Screen(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CalButton(text: "c"),
                CalButton(text: "%"),
                CalButtonPic(text: "assets/button/calculator/Backspace.png"),
                CalButtonPic(text: "assets/button/calculator/Divide.png"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CalButton(text: "7"),
                CalButton(text: "8"),
                CalButton(text: "9"),
                CalButtonPic(text: "assets/button/calculator/X.png"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CalButton(text: "4"),
                CalButton(text: "5"),
                CalButton(text: "6"),
                CalButtonPic(text: "assets/button/calculator/Minus.png"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CalButton(text: "1"),
                CalButton(text: "2"),
                CalButton(text: "3"),
                CalButtonPic(text: "assets/button/calculator/Plus.png"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CalButton(text: "00"),
                CalButton(text: "0"),
                CalButton(text: "."),
                CalButtonPic(text: "assets/button/calculator/Equals.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CalculatorTab extends StatefulWidget {
  const CalculatorTab({Key? key}) : super(key: key);

  @override
  State<CalculatorTab> createState() => _CalculatorTabState();
}

class _CalculatorTabState extends State<CalculatorTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Container(
          padding: EdgeInsets.all(8),
          child: Expanded(
              child: Container(
            // padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.topCenter,
                  child: Screen(),
                  // color: Colors.white,
                )),
                Expanded(
                    child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CalButton(text: "c"),
                          CalButton(text: "%"),
                          CalButtonPic(
                              text: "assets/button/calculator/Backspace.png"),
                          CalButtonPic(
                              text: "assets/button/calculator/Divide.png"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CalButton(text: "7"),
                          CalButton(text: "8"),
                          CalButton(text: "9"),
                          CalButtonPic(text: "assets/button/calculator/X.png"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CalButton(text: "4"),
                          CalButton(text: "5"),
                          CalButton(text: "6"),
                          CalButtonPic(
                              text: "assets/button/calculator/Minus.png"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CalButton(text: "1"),
                          CalButton(text: "2"),
                          CalButton(text: "3"),
                          CalButtonPic(
                              text: "assets/button/calculator/Plus.png"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CalButton(text: "00"),
                          CalButton(text: "0"),
                          CalButton(text: "."),
                          CalButtonPic(
                              text: "assets/button/calculator/Equals.png"),
                        ],
                      ),
                    ],
                  ),
                  // color: Colors.green,
                ))
              ],
            ),
            // color: Colors.blue,
          ))),
    );
  }
}
