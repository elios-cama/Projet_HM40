import 'package:flutter/material.dart';
import 'package:miniprojethm40/screens/home_screen.dart';
import 'package:miniprojethm40/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => ThemeProvider()),
      builder: (context, _){
        final themeProvider = Provider.of<ThemeProvider>(context);
      
      return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        themeMode: themeProvider.thememode,
        theme: MyThemes.lightTheme,
        darkTheme : MyThemes.darkTheme,
        home:  HomePage(),
      );
      },
      
    );
  }
}
