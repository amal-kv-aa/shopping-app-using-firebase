import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier{
 
  ThemeMode _themeMode = ThemeMode.light;
  bool isdark = false;
  get thememode => _themeMode;
  
  void toggleTheme(bool isDark){
   _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
   notifyListeners();
  }
}