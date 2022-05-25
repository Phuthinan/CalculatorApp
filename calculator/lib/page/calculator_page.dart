// import 'package:calculator/data.dart';
import 'package:calculator/utils/app_color.dart';
import 'package:calculator/widget/screen.dart';
import 'package:flutter/material.dart';
import '../db/file_manager.dart';
import '../widget/button_cal.dart';

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

  String Content(String equa, String ans) {
    return "${equa}:${ans}\n";
  }

  saveData() {
    FileUtils.writeContent(Content(amount, ans));
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
                  Expanded(
                      child: Keypad(callback: callback, saveData: saveData))
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
                      child: Screen(amount: Val.amount, ans: Val.ans),

                      // color: Colors.white,
                    )),
                    Expanded(
                      child: Container(
                          child:
                              Keypad(callback: callback, saveData: saveData)),
                      // color: Colors.green,
                    )
                  ],
                ),
                // color: Colors.blue,
              ))),
    );
  }
}

class Keypad extends StatefulWidget {
  Function callback;
  Function saveData;
  Keypad({Key? key, required this.callback, required this.saveData})
      : super(key: key);

  @override
  State<Keypad> createState() => _KeypadState();
}

class _KeypadState extends State<Keypad> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonCal(
                text: "c",
                btnKey: "c",
                callback: widget.callback,
                saveData: widget.saveData),
            ButtonCal(
                text: "%",
                btnKey: "%",
                callback: widget.callback,
                saveData: widget.saveData),
            ButtonCal(
                text: "assets/button/calculator/Backspace.png",
                btnKey: "del",
                istext: false,
                callback: widget.callback,
                saveData: widget.saveData),
            ButtonCal(
                text: "assets/button/calculator/Divide.png",
                btnKey: "÷",
                istext: false,
                callback: widget.callback,
                saveData: widget.saveData),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonCal(
                text: "7",
                btnKey: "7",
                callback: widget.callback,
                saveData: widget.saveData),
            ButtonCal(
                text: "8",
                btnKey: "8",
                callback: widget.callback,
                saveData: widget.saveData),
            ButtonCal(
                text: "9",
                btnKey: "9",
                callback: widget.callback,
                saveData: widget.saveData),
            ButtonCal(
                text: "assets/button/calculator/X.png",
                btnKey: "×",
                istext: false,
                callback: widget.callback,
                saveData: widget.saveData),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonCal(
                text: "4",
                btnKey: "4",
                callback: widget.callback,
                saveData: widget.saveData),
            ButtonCal(
                text: "5",
                btnKey: "5",
                callback: widget.callback,
                saveData: widget.saveData),
            ButtonCal(
                text: "6",
                btnKey: "6",
                callback: widget.callback,
                saveData: widget.saveData),
            ButtonCal(
                text: "assets/button/calculator/Minus.png",
                btnKey: "-",
                istext: false,
                callback: widget.callback,
                saveData: widget.saveData),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonCal(
                text: "1",
                btnKey: "1",
                callback: widget.callback,
                saveData: widget.saveData),
            ButtonCal(
                text: "2",
                btnKey: "2",
                callback: widget.callback,
                saveData: widget.saveData),
            ButtonCal(
                text: "3",
                btnKey: "3",
                callback: widget.callback,
                saveData: widget.saveData),
            ButtonCal(
                text: "assets/button/calculator/Plus.png",
                btnKey: "+",
                istext: false,
                callback: widget.callback,
                saveData: widget.saveData),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonCal(
                text: "00",
                btnKey: "00",
                callback: widget.callback,
                saveData: widget.saveData),
            ButtonCal(
                text: "0",
                btnKey: "0",
                callback: widget.callback,
                saveData: widget.saveData),
            ButtonCal(
                text: ".",
                btnKey: ".",
                callback: widget.callback,
                saveData: widget.saveData),
            ButtonCal(
                text: "assets/button/calculator/Equals.png",
                btnKey: "=",
                istext: false,
                callback: widget.callback,
                saveData: widget.saveData),
          ],
        ),
      ],
    );
  }
}
