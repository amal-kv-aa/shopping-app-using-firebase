import 'package:flutter/material.dart';

class TextHeadline extends StatelessWidget {
  const TextHeadline({Key? key,required this.text, this.size, this.color,this.fontStyle,this.weight}) : super(key: key);
  final String text;
  final Color? color;
  final double? size ;
  final FontStyle? fontStyle;
  final FontWeight? weight;
  @override
  Widget build(BuildContext context) {
    return
    Text(text,style: TextStyle(color: color?? Colors.white,fontSize: size ?? 30 ,fontStyle: fontStyle ?? FontStyle.italic,fontWeight: weight ?? FontWeight.bold),);
  }
}