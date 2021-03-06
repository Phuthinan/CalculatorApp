import 'package:calculator/widget/button_pic.dart';
import 'package:calculator/widget/text.dart';
import 'package:calculator/widget/unit_logo.dart';
import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class UnitConverter extends StatefulWidget {
  bool isPhone;
  UnitConverter({Key? key, this.isPhone = true}) : super(key: key);

  @override
  State<UnitConverter> createState() => _UnitConverterState();
}

class _UnitConverterState extends State<UnitConverter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainColor,
        body: widget.isPhone
            ? Container(
                padding: EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 60),
                child: Column(
                  children: [
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
                            address:
                                "assets/button/calculator/ThermometerSimple.png",
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
                            address:
                                "assets/button/calculator/ClockAfternoon.png",
                            text: "Pressure"),
                        Container(
                          height: 120,
                          width: 75,
                        )
                      ],
                    ),
                  ],
                ),
              )
            : Container(
                padding: EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 40),
                child: Column(
                  children: [
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
                            address:
                                "assets/button/calculator/ThermometerSimple.png",
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
                            address:
                                "assets/button/calculator/ClockAfternoon.png",
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
              ));
  }
}
