
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.pink,
  elevatedButtonTheme: ElevatedButtonThemeData(style:ElevatedButton.styleFrom(primary: Colors.pink) ),
   iconTheme:const IconThemeData(color: Colors.amber),
    textTheme: TextTheme(titleMedium: TextStyle(color: Colors.amber))
);
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
   primarySwatch: Colors.pink,
   primaryColor: Colors.amber,
   iconTheme:const IconThemeData(color:Colors.amber),
  elevatedButtonTheme: ElevatedButtonThemeData(style:ElevatedButton.styleFrom(primary:const Color.fromARGB(255, 211, 128, 20),), ),
); 