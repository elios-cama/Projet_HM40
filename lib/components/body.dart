import 'package:flutter/material.dart';
import 'package:miniprojethm40/components/categories.dart';
import 'package:miniprojethm40/size_config.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        
        Categories()
      ],
    );
  }
}