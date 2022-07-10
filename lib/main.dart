import 'package:basics_provider/provider.dart/cart_provider.dart';
import 'package:basics_provider/provider.dart/counter_provider.dart';
import 'package:basics_provider/screens/home.dart';
import 'package:basics_provider/screens/shopping.dart';
import 'package:basics_provider/theme/theme_changer.dart';
import 'package:basics_provider/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
   MultiProvider(
    providers: [
    ChangeNotifierProvider(create:(_) => Counter()),
    ChangeNotifierProvider(create:(_) => Cart()),
    ChangeNotifierProvider(create: (_)=> ThemeChanger())
   ],
   child:const MyApp(),)
    );
}

 
class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode:context.watch<ThemeChanger>().thememode,
     initialRoute: '/',
     routes: {
      '/' : (context)=> MyhomePage(),
      '/shoping' : (context)=>const Shopping(), 
     },
    );
  }
}

