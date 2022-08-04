import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.amber,
  iconTheme: const IconThemeData(
    color: Color.fromARGB(255, 243, 202, 81),
  ),
  cardColor: const Color.fromARGB(255, 255, 255, 255),
  textTheme: const TextTheme(
     headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold,color: Colors.red),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: const Color.fromARGB(255, 81, 200, 38),
    ),
  ),

  ///
);
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.grey,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(primary: Colors.grey),
  ),
  iconTheme: const IconThemeData(color: Colors.amber),
  cardColor: const Color.fromARGB(255, 3, 3, 3),
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      color: Color.fromARGB(255, 255, 255, 255),
    ),
  ),
);
