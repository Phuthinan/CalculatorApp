import 'dart:io';

import 'package:calculator/model/model.dart';
import 'package:calculator/utils/app_color.dart';
import 'package:calculator/utils/calculate.dart';
import 'package:flutter/material.dart';

import '../boxes.dart';
import '../db/file_manager.dart';

class Val {
  static String amount = '';
  static String ans = '';
  static bool isEqual = false;
}

Future addModel(String equation, String ans) async {
  final model = Model()
    ..equation = equation
    ..ans = ans;
  final box = Boxes.getModel();
  box.add(model);
}

class ButtonCal extends StatefulWidget {
  static final FileUtils fileUtils = FileUtils();
  final String text;
  final Function callback;
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
      required this.callback})
      : super(key: key);

  @override
  State<ButtonCal> createState() => _ButtonCalState();
}

class _ButtonCalState extends State<ButtonCal> {
  @override
  void initState() {
    // TODO: implement initState
    Val.amount = '';
  }

  late ReturnData ans;
  String contents = '';

  @override
  Widget build(BuildContext context) {
    bool isPercent = false;
    saveData(String equa, String ans) {
      String content = '';
      setState(() {
        content = "${equa}:${ans}\n";
      });
      ButtonCal.fileUtils.writeContent(content);
    }

    return RaisedButton(
      shape: CircleBorder(),
      color: AppColors.mainColor,
      onPressed: () {
        setState(() {
          if (Val.amount == '') {
            if (!(IsOperator(widget.btnKey) ||
                widget.btnKey == '%' ||
                widget.btnKey == 'del' ||
                widget.btnKey == '=' ||
                widget.btnKey == 'c')) {
              Val.amount += widget.btnKey;
            }
            ans = FinalCal(Val.amount);
            widget.callback(Val.amount, '');
          } else {
            if ((IsOperator(widget.btnKey) ||
                widget.btnKey == 'del' ||
                widget.btnKey == 'c')) {
              if (widget.btnKey == 'del') {
                Val.amount = Val.amount.substring(0, Val.amount.length - 1);
              } else if (widget.btnKey == 'c') {
                Val.amount = '';
              } else if (IsOperator(widget.btnKey)) {
                if (IsOperator(Val.amount[Val.amount.length - 1])) {
                  Val.amount = Val.amount.substring(0, Val.amount.length - 1);
                  Val.amount += widget.btnKey;
                } else {
                  Val.amount += widget.btnKey;
                }
              }
            } else if (widget.btnKey == '=') {
              ans = FinalCal(Val.amount);
            } else {
              if (Val.amount[Val.amount.length - 1] == '%') {
                Val.amount += '×';
              }
              Val.amount += widget.btnKey;
            }
          }
        });
        if (widget.btnKey == '=') {
          if (ans.isError) {
            widget.callback(Val.amount, 'error');
          } else {
            widget.callback(Val.amount, ans.sum);
            addModel(Val.amount, ans.sum);
          }
        } else {
          widget.callback(Val.amount, '');
        }
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
