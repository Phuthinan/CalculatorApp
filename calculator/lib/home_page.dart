import 'package:calculator/page/calculator_page.dart';
import 'package:calculator/page/history_page.dart';
import 'package:calculator/page/unit_converter_page.dart';
import 'package:calculator/utils/app_color.dart';
import 'package:calculator/widget/md2.dart';
import 'package:calculator/widget/text.dart';
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
          SizedBox(height: 60),
          Container(
            alignment: Alignment.center,
            // margin: EdgeInsets.all(10),
            height: 30,
            width: 400,
            child: TabBar(
                labelColor: AppColors.redColor,
                unselectedLabelColor: AppColors.whiteColor,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: MD2Indicator(
                    indicatorHeight: 3,
                    indicatorColor: AppColors.redColor,
                    indicatorSize: MD2IndicatorSize.full),
                tabs: [
                  Tab(text: "Calculator"),
                  Tab(text: "Unit Converter"),
                  Tab(text: "History")
                ],
                controller: _tabController,
                labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
                unselectedLabelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 14)),
          ),
          Expanded(
            child: Container(
              height: double.maxFinite,
              child: TabBarView(
                  controller: _tabController,
                  children: [Calculator(), UnitConverter(), HistoryPage()]),
            ),
          )
        ],
      ),
    );
  }
}

class HomePageTab extends StatefulWidget {
  const HomePageTab({Key? key}) : super(key: key);

  @override
  State<HomePageTab> createState() => _HomePageTabState();
}

class _HomePageTabState extends State<HomePageTab>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            height: 30,
            width: 400,
            child: TabBar(
                labelColor: AppColors.redColor,
                unselectedLabelColor: AppColors.whiteColor,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: MD2Indicator(
                    indicatorHeight: 3,
                    indicatorColor: AppColors.redColor,
                    indicatorSize: MD2IndicatorSize.full),
                tabs: [
                  Tab(text: "Calculator"),
                  Tab(text: "Unit Converter"),
                  Tab(text: "History")
                ],
                controller: _tabController,
                labelStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
                unselectedLabelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 14)),
          ),
          Expanded(
            child: Container(
              height: double.maxFinite,
              child: TabBarView(controller: _tabController, children: [
                CalculatorTab(),
                UnitConverterTab(),
                HistoryTabPage()
              ]),
            ),
          )
        ],
      ),
    );
  }
}
