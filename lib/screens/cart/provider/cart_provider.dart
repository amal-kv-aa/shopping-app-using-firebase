
import 'package:basics_provider/screens/cart/model/model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class Cart with ChangeNotifier{
  bool isitems=false;
  //===============add data to the firebase===========//
  Future creatUser(name,amount,image) async {
    final docUser = FirebaseFirestore.instance
        .collection(FirebaseAuth.instance.currentUser!.email.toString())
        .doc();
    final user =
        UserCart(id: docUser.id, name: name, amount: amount, image: image);
    final json =user.toJson();
    await docUser.set(json);
          notifyListeners();
  }

  Stream<List<UserCart>> getUserCart() {
    return FirebaseFirestore.instance
        .collection(FirebaseAuth.instance.currentUser!.email.toString())
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => UserCart.fromJson(doc.data()))
            .toList());
  }
  void deleteproduct()async{
   await FirebaseFirestore.instance.collection('user').doc(FirebaseAuth.instance.currentUser!.uid).delete();
  }
}