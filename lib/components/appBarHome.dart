 import 'package:flutter/material.dart';
import 'package:miniprojethm40/constants.dart';

AppBar AppBarHome() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      leading: Icon(
        Icons.nightlight,
        color: primaryRedColor,
      ),
      title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.soup_kitchen_outlined,
              color: primaryRedColor,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "CUISINOMAX",
              style: TextStyle(color: primaryRedColor),
            )
          ]),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Icon(
            Icons.person,
            color: primaryRedColor,
          ),
        )
      ],
    );
  }

