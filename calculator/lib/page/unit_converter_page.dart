import 'package:calculator/widget/button_pic.dart';
import 'package:calculator/widget/text.dart';
import 'package:calculator/widget/unit_logo.dart';
import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class UnitConverter extends StatefulWidget {
  const UnitConverter({Key? key}) : super(key: key);

  @override
  State<UnitConverter> createState() => _UnitConverterState();
}

class _UnitConverterState extends State<UnitConverter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                UnitLogo(
                    address: "assets/button/calculator/ChartBar.png",
                    text: "Length"),
                UnitLogo(
                    address: "assets/button/calculator/SquareHalf.png",
                    text: "Area"),
                UnitLogo(
                    address: "assets/button/calculator/Cube.png",
                    text: "Volume"),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                UnitLogo(
                    address: "assets/button/calculator/Gauge.png",
                    text: "Speed"),
                UnitLogo(
                    address: "assets/button/calculator/Barbell.png",
                    text: "Weight"),
                UnitLogo(
                    address: "assets/button/calculator/ThermometerSimple.png",
                    text: "Temperature"),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                UnitLogo(
                    address: "assets/button/calculator/Lightning.png",
                    text: "Power"),
                UnitLogo(
                    address: "assets/button/calculator/ClockAfternoon.png",
                    text: "Pressure"),
                Container(
                  height: 120,
                  width: 75,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UnitConverterTab extends StatefulWidget {
  const UnitConverterTab({Key? key}) : super(key: key);

  @override
  State<UnitConverterTab> createState() => _UnitConverterTabState();
}

class _UnitConverterTabState extends State<UnitConverterTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                UnitLogo(
                    address: "assets/button/calculator/ChartBar.png",
                    text: "Length"),
                UnitLogo(
                    address: "assets/button/calculator/SquareHalf.png",
                    text: "Area"),
                UnitLogo(
                    address: "assets/button/calculator/Cube.png",
                    text: "Volume"),
                UnitLogo(
                    address: "assets/button/calculator/Gauge.png",
                    text: "Speed"),
                UnitLogo(
                    address: "assets/button/calculator/Barbell.png",
                    text: "Weight"),
                UnitLogo(
                    address: "assets/button/calculator/ThermometerSimple.png",
                    text: "Temperature"),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                UnitLogo(
                    address: "assets/button/calculator/Lightning.png",
                    text: "Power"),
                UnitLogo(
                    address: "assets/button/calculator/ClockAfternoon.png",
                    text: "Pressure"),
                Container(
                  height: 120,
                  width: 75,
                ),
                Container(
                  height: 120,
                  width: 75,
                ),
                Container(
                  height: 120,
                  width: 75,
                ),
                Container(
                  height: 120,
                  width: 75,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
