import 'package:basics_provider/screens/Loby/view/loby_page.dart';
import 'package:basics_provider/screens/cart/provider/cart_provider.dart';
import 'package:basics_provider/screens/home/provider/counter_provider.dart';
import 'package:basics_provider/screens/home/view/home.dart';
import 'package:basics_provider/utils/methodes/theme_changer.dart';
import 'package:basics_provider/utils/methodes/theme_constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void  main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
   MultiProvider(
    providers: [
    ChangeNotifierProvider(create:(_) => HomeProvider()),
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode:context.watch<ThemeChanger>().thememode,
      home:const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)=>
  StreamBuilder<User?>(
    stream: FirebaseAuth.instance.authStateChanges(),
    builder: (context, snapshot) {
     if (snapshot.hasData) {
       return  Home();
     }
     else{
      return const LobyPage();
     }
  },);
}


