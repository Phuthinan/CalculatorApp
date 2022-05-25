import 'package:calculator/boxes.dart';
import 'package:calculator/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import '../db/file_manager.dart';
import '../model/model.dart';
import '../utils/app_color.dart';

class HistoryPage extends StatefulWidget {
  bool isPhone;
  HistoryPage({Key? key, this.isPhone = true}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainColor,
        body: ValueListenableBuilder<Box<Model>>(
            valueListenable: Boxes.getModel().listenable(),
            builder: (context, box, _) {
              final models = box.values.toList().cast<Model>();
              return buildContent(models, widget.isPhone);
            }));
  }

  Widget buildContent(List<Model> model, bool isPhone) {
    return ListView.builder(
        padding: isPhone
            ? EdgeInsets.only(left: 50, right: 20, top: 60)
            : EdgeInsets.only(left: 20, right: 20, top: 50),
        itemCount: model.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              child: widget.isPhone
                  ? HistoryLabel(
                      text: model[index].equation, amount: model[index].ans)
                  : HistoryLabelTab(
                      text: model[index].equation, amount: model[index].ans));
        });
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
      crossAxisAlignment: CrossAxisAlignment.center,
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
