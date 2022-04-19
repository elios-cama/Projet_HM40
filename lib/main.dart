import 'package:flutter/material.dart';
import 'package:miniprojethm40/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.white, elevation: 0),
        backgroundColor: Colors.white,
        primarySwatch: Colors.red,
      ),
      home:  HomePage(),
    );
  }
}
