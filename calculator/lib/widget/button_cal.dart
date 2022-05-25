import 'package:calculator/db/file_manager.dart';
import 'package:calculator/utils/app_color.dart';
import 'package:calculator/utils/calculate.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Val {
  static String amount = '';
  static String ans = '';
}

class ButtonCal extends StatefulWidget {
  final String text;
  final Function callback;
  final Function saveData;
  final String btnKey;
  Color logocolor;
  double size;
  final bool istext;
  ButtonCal(
      {Key? key,
      required this.text,
      this.istext = true,
      this.logocolor = const Color(0xFF747474),
      this.size = 35,
      required this.btnKey,
      required this.callback,
      required this.saveData})
      : super(key: key);

  @override
  State<ButtonCal> createState() => _ButtonCalState();
}

class _ButtonCalState extends State<ButtonCal> {
  late String keybtn;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isPercent = false;
    return RaisedButton(
      shape: CircleBorder(),
      color: AppColors.mainColor,
      onPressed: () {
        if (widget.btnKey == '=') {
          print("enter");
          widget.saveData;
        }
        setState(() {
          keybtn = widget.btnKey;
          if (Val.amount == '') {
            if (!(IsOperator(keybtn) ||
                keybtn == '%' ||
                keybtn == 'del' ||
                keybtn == '=' ||
                keybtn == 'c')) {
              Val.amount += keybtn;
              Val.ans = FinalCal(Val.amount);

              // print(Val.ans);
            }
          } else {
            if (widget.btnKey == 'del') {
              //delete last ch
              Val.amount = Val.amount.substring(0, Val.amount.length - 1);
              Val.ans = FinalCal(Val.amount);
            } else if (widget.btnKey == 'c') {
              // clear data
              Val.ans = '';
              Val.amount = '';
            } else if (widget.btnKey == '=') {
              Val.ans = FinalCal(Val.amount);

              //save to storage
              //show in screen

              //clear data
              Val.ans = '';
              Val.amount = '';
            } else if (IsOperator(keybtn)) {
              if (IsOperator(Val.amount[Val.amount.length - 1])) {
                // change operator
                Val.amount = Val.amount.substring(0, Val.amount.length - 1);
                Val.amount += keybtn;
                Val.ans = FinalCal(Val.amount);
                widget.callback(Val.amount, Val.ans);
              } else {
                Val.amount += keybtn;
                Val.ans = FinalCal(Val.amount);

                widget.callback(Val.amount, Val.ans);

                // print(Val.ans);
              }
            } else if (isPercent) {
              print("yoooo");
              Val.amount = Val.amount + 'x';
              widget.callback(Val.amount, Val.ans);

              Val.ans = FinalCal(Val.amount);
              isPercent = false;

              print(Val.ans);
            } else {
              Val.amount += keybtn;
            }
            Val.ans = FinalCal(Val.amount);

            // print(Val.ans);
            // widget.callback(Val.amount, Val.ans);

          }
          widget.callback(Val.amount, Val.ans);
          if (keybtn == '%') {
            isPercent = true;
          }
          // print(isPercent);

          // print("AMOUNT = " + Val.amount);
          // print('ans=' + Val.ans);
        });
      },
      child: widget.istext
          ? Container(
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
              child: Center(
                child: Text(
                  widget.text,
                  style: TextStyle(
                      color: widget.logocolor,
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: widget.size),
                ),
              ),
            )
          : Container(
              child: Center(
                child: Container(
                    width: widget.size,
                    height: widget.size,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(widget.text),
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
            ),
    );
  }
}
