// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:miniprojethm40/constants.dart';


import '../../../size_config.dart';


class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Découverte","Personnalisé"];
  
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Center(
      child: Container(
        width: mediaQueryData.size.width*0.8,
        height: mediaQueryData.size.width*0.1,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(
                20 // 16
              )
        ),
        padding: EdgeInsets.symmetric(vertical: 3 ),
        child: SizedBox(
          height: mediaQueryData.size.height * 0.09, // 35
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategoriItem(index),
          ),
        ),
      ),
    );
  }

  Widget buildCategoriItem(int index) {
        final mediaQueryData = MediaQuery.of(context);

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: mediaQueryData.size.width * 0.385,
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 3, right: 3),
        padding: EdgeInsets.symmetric(
          vertical: mediaQueryData.size.height*0.01, //5
        ),
        decoration: BoxDecoration(
            color:
                selectedIndex == index ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(
              20 
            )),
        child: Text(
          categories[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: selectedIndex == index ? primaryRedColor: Color(0xFFC2C2B5),
          ),
        ),
      ),
    );
  }
}