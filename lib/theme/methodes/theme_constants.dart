
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch:Colors.lightGreen,
  elevatedButtonTheme: ElevatedButtonThemeData(style:ElevatedButton.styleFrom(primary: Colors.lightGreen) ),
   iconTheme:const IconThemeData(color: Colors.amber),
   cardColor:const Color.fromARGB(255, 204, 255, 145),
    textTheme:const TextTheme(titleMedium: TextStyle(color: Color.fromARGB(255, 0, 0, 0)))
);
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
   primaryColor: Colors.amber,
   iconTheme:const IconThemeData(color:Color.fromARGB(255, 243, 202, 81)),
   cardColor:const Color.fromARGB(255, 255, 155, 112),
  elevatedButtonTheme: ElevatedButtonThemeData(style:ElevatedButton.styleFrom(primary:const  Color.fromARGB(255, 255, 155, 112),), ),
); 