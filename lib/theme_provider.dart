import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode thememode = ThemeMode.dark;
  bool get isDarkMode => thememode == ThemeMode.dark;
  void toggleTheme(bool isOn){
    thememode = isOn?
    ThemeMode.dark:ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes{
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    appBarTheme: AppBarTheme(color: Colors.grey.shade900),
    bottomAppBarColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark()
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(color: Colors.white),
    
    colorScheme: ColorScheme.light()
  );
}