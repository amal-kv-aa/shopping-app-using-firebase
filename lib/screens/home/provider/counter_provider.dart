import 'package:basics_provider/screens/home/model/suggestion_model/suggestio.dart';
import 'package:basics_provider/screens/home/model/top_brand_model/model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class HomeProvider with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment(){
  _count++;
  notifyListeners();
  }
  void decrement(){
    _count--;
    notifyListeners();
  }
  void reset(){
    _count=0;
    notifyListeners();
  }
 Stream<List<Suggetion>> getsuggetions() {
    return FirebaseFirestore.instance
        .collection('suggestions')
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Suggetion.fromJson(doc.data()))
            .toList());
  }
   Stream<List<Item>> readUser() {
    return FirebaseFirestore.instance
        .collection('items')
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Item.fromJson(doc.data()))
            .toList());
  }
}