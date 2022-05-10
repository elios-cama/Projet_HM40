import 'package:flutter/material.dart';
import 'package:miniprojethm40/screens/steps/Step1_screen.dart';
import 'package:miniprojethm40/screens/steps/Step2_screen.dart';
import 'package:miniprojethm40/screens/steps/Step3_screen.dart';
import 'package:miniprojethm40/screens/steps/Step4_screen.dart';
import 'package:miniprojethm40/screens/steps/Step5_screen.dart';
import 'package:miniprojethm40/screens/steps/Step6_screen.dart';
import 'package:miniprojethm40/screens/steps/Step7_screen.dart';
class PageViewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController _controller = PageController(
    initialPage: 0,
    viewportFraction: 1
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        Step1(),
        Step2(),
        Step3(),
        Step4(),
        Step5(),
        Step6(),
        Step7(),
      ],
    );
  }
}