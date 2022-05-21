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
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 60),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              HistoryLabel(text: "12345679 x 9", amount: "1,11,11,111,111"),
              HistoryLabel(text: "123+456", amount: "579"),
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
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 50),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HistoryLabelTab(
                      text: "12345679 x 9", amount: "1,11,11,111,111"),
                  HistoryLabelTab(text: "123+456", amount: "579"),
                ])));
  }
}

class HistoryLabelTab extends StatelessWidget {
  final String text;
  final String amount;
  HistoryLabelTab({Key? key, required this.text, required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextHis(
          text: "Calculator",
          size: 16,
        ),
        SizedBox(height: 2),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextHis(
            text: text,
            size: 22.3689,
          ),
          SizedBox(width: 15),
          TextHis(
            text: "= ${amount}",
            size: 24.47,
            color: AppColors.whiteColor,
          ),
        ]),
        SizedBox(height: 35),
      ],
    );
  }
}

class HistoryLabel extends StatelessWidget {
  final String text;
  final String amount;
  HistoryLabel({Key? key, required this.text, required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextHis(
          text: "Calculator",
          size: 16,
        ),
        SizedBox(height: 2),
        Row(children: [
          TextHis(
            text: text,
            size: 22.3689,
          ),
          SizedBox(width: 15),
          TextHis(
            text: "= ${amount}",
            size: 24.47,
            color: AppColors.whiteColor,
          ),
        ]),
        SizedBox(height: 35),
      ],
    );
  }
}
