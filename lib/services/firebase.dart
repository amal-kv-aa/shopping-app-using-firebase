import 'package:basics_provider/utils/snackbar/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class FirebaseAuthMethodes{

final FirebaseAuth _auth;
FirebaseAuthMethodes(this._auth);

//======Email Sign app======//

Future <void> signupUsingEmail({
  required String email,
  required String password,
  required BuildContext context,
   
}) async{
  try {
   await _auth.createUserWithEmailAndPassword(
      email: email,
     password: password
     );
  await sendEmailVerification(context);
  Navigator.pop(context);
  } on FirebaseException catch (e) {
      Showsnackbar.showsnack(
          context, e.message!); 
    }
  }
  //===Email Login===//
  Future <void> loginWithEmail({
  required String email,
  required String password,
  required BuildContext context,
  })async{
 try {
  await _auth.signInWithEmailAndPassword(email: email, password: password);
   if (!_auth.currentUser!.emailVerified) {
      Showsnackbar.showsnack(context,"No Account verified");
       Navigator.pop(context);
       sendEmailVerification(context);
   }
 } on FirebaseAuthException catch (e) {
   Showsnackbar.showsnack(context,e.message!);
 }
  }
        //==========verify email=============//
 Future <void> sendEmailVerification(BuildContext context)async {
  try {
  await  _auth.currentUser!.sendEmailVerification();
    Showsnackbar.showsnack(context, 'Email verification sent');
  } on FirebaseAuthException catch (e) {
    Showsnackbar.showsnack(context, e.message!);
  }
 }
}
