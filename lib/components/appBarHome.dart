 import 'package:flutter/material.dart';

AppBar AppBarHome() {
    return AppBar(
      centerTitle: true,
      leading: Icon(
        Icons.menu,
        color: Colors.red.shade300,
      ),
      title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.soup_kitchen_outlined,
              color: Colors.red.shade300,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "CUCINA",
              style: TextStyle(color: Colors.red.shade300),
            )
          ]),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Icon(
            Icons.person,
            color: Colors.red.shade300,
          ),
        )
      ],
    );
  }

