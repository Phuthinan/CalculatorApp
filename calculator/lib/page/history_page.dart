import 'package:calculator/widget/text.dart';
import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Container(
            margin: EdgeInsets.all(30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 120),
              TextHis(
                text: "Calculator",
                size: 16,
              ),
              SizedBox(height: 2),
              Row(children: [
                TextHis(
                  text: "12345679 x 9",
                  size: 22.3689,
                ),
                SizedBox(width: 15),
                TextHis(
                  text: "= 1,11,11,111,111",
                  size: 24.47,
                  color: AppColors.whiteColor,
                ),
              ]),
              SizedBox(height: 35),
              TextHis(
                text: "Calculator",
                size: 16,
              ),
              SizedBox(height: 2),
              Row(children: [
                TextHis(
                  text: "123+456",
                  size: 22.3689,
                ),
                SizedBox(width: 15),
                TextHis(
                  text: "= 579",
                  size: 24.47,
                  color: AppColors.whiteColor,
                ),
              ]),
              SizedBox(height: 35),
            ])));
  }
}

class HistoryTabPage extends StatefulWidget {
  const HistoryTabPage({Key? key}) : super(key: key);

  @override
  State<HistoryTabPage> createState() => _HistoryTabPageState();
}

class _HistoryTabPageState extends State<HistoryTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Container(
            margin: EdgeInsets.all(30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 120),
                  TextHis(
                    text: "Calculator",
                    size: 16,
                  ),
                  SizedBox(height: 2),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    TextHis(
                      text: "12345679 x 9",
                      size: 22.3689,
                    ),
                    SizedBox(width: 15),
                    TextHis(
                      text: "= 1,11,11,111,111",
                      size: 24.47,
                      color: AppColors.whiteColor,
                    ),
                  ]),
                  SizedBox(height: 35),
                  TextHis(
                    text: "Calculator",
                    size: 16,
                  ),
                  SizedBox(height: 2),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    TextHis(
                      text: "123+456",
                      size: 22.3689,
                    ),
                    SizedBox(width: 15),
                    TextHis(
                      text: "= 579",
                      size: 24.47,
                      color: AppColors.whiteColor,
                    ),
                  ]),
                  SizedBox(height: 35),
                ])));
  }
}
