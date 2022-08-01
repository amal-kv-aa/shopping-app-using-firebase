import 'package:flutter/material.dart';

class Showsnackbar extends StatelessWidget {
  const Showsnackbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
  static showsnack(BuildContext context,String text){
   ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.brown,
      content:
     Text(text),
     )
   );
  }
}