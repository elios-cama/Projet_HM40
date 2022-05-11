// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:miniprojethm40/components/appBarHome.dart';
import 'package:miniprojethm40/screens/FridgeScreen.dart';
import 'package:miniprojethm40/screens/RecipeScreen.dart';
import 'package:miniprojethm40/constants.dart';
import 'package:miniprojethm40/constants.dart';
import 'package:miniprojethm40/screens/SearchScreen.dart';
import 'package:miniprojethm40/screens/weekScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  List pages = [RecipeScreen(), WeekScreen(), SearchScreen(), FridgeScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(),
      body: pages[pageIndex],
      
      bottomNavigationBar: CustomAppBar(context),
    );
  }

  Container CustomAppBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? Icon(
                    Icons.soup_kitchen,
                    color: primaryRedColor,
                    size: 35,
                  )
                : Icon(
                    Icons.soup_kitchen_outlined,
                    color: clickedIconColor,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? Icon(
                    Icons.date_range,
                    color: primaryRedColor,
                    size: 35,
                  )
                : Icon(
                    Icons.calendar_month,
                    color: clickedIconColor,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? Icon(
                    Icons.search,
                    color: primaryRedColor,
                    size: 35,
                  )
                : Icon(
                    Icons.search,
                    color: clickedIconColor,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? Icon(
                    Icons.kitchen,
                    color: primaryRedColor,
                    size: 35,
                  )
                : Icon(
                    Icons.kitchen_outlined,
                    color: clickedIconColor,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}
