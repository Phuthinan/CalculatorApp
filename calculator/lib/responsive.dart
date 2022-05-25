import 'package:calculator/home_page.dart';
import 'package:calculator/page/calculator_page.dart';
import 'package:calculator/page/history_page.dart';
import 'package:calculator/page/unit_converter_page.dart';
import 'package:calculator/widget/unit_logo.dart';
import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  const Responsive({Key? key}) : super(key: key);

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 620) {
          return HomePage();
        } else {
          return HomePage(
            isPhone: false,
          );
        }
      },
    );
  }
}
