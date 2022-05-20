import 'package:calculator/page/calculator_page.dart';
import 'package:calculator/page/history_page.dart';
import 'package:calculator/page/unit_converter_page.dart';
import 'package:calculator/utils/app_color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: [
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.all(10),
            height: 60,
            child: TabBar(
              indicator: BoxDecoration(),
              tabs: [
                Tab(text: "Calculator"),
                Tab(text: "Unit Converter"),
                Tab(text: "History")
              ],
              controller: _tabController,
              // labelStyle: GoogleFonts.poppins(
              //     fontStyle: FontStyle.normal,
              //     fontWeight: FontWeight.w500,
              //     fontSize: 14),
            ),
          ),
          Container(
            height: double.maxFinite,
            child: TabBarView(
                controller: _tabController,
                children: [Calculator(), UnitConverter(), HistoryPage()]),
          )
        ],
      ),
    );
  }
}
