// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:miniprojethm40/components/appBarHome.dart';
import 'package:miniprojethm40/components/body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(),
      body: Body(),
    );
  }
}

 