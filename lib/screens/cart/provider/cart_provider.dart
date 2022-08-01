import 'package:flutter/cupertino.dart';

class Cart with ChangeNotifier{
  bool isitems=false;
  List<String> shoppingcart = [];
  List nameproduct = [];
  int get count => shoppingcart.length;
  List<String>  get cart => shoppingcart;
   List get name => nameproduct;
  void additem(String item, String name){
    shoppingcart.add(item);
    nameproduct.add(name);
    isitems==true;
    notifyListeners();
  }
  void remove(int index){
   shoppingcart.removeAt(index);
    notifyListeners();
  }  
}