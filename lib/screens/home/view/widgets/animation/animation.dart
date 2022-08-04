import 'package:flutter/material.dart';
import 'dart:math';

class BgAnimation extends StatelessWidget {
   BgAnimation({Key? key,required this.controller}) : super(key: key);
  ScrollController controller;
  @override
  Widget build(BuildContext context) {
    return
    AnimatedBuilder(animation: controller, builder: (context,child){
      return
       Transform.rotate(
           angle: ((pi * 20) / -1024),
           child:const Icon(Icons.settings, size: 512, color: Colors.white)
       );
    });
  }
}