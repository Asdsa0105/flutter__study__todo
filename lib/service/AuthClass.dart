import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:todo/pages/MainPage.dart';
import 'dart:developer';

import 'package:todo/util/ReservedWord.dart' as ReservedWord;

class AuthClass {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(

    scopes: [

      'email',
      'https://www.googleapis.com/auth/contacts.readonly',

    ],
  );

  final FlutterSecureStorage storage = new FlutterSecureStorage();

  Future<void> googleSignIn (BuildContext context) async {

    log('button click!');

    GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();

    try {

      log('button click!!');

      if(googleSignInAccount != null) {

        GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        UserCredential userCredential =
                await _auth.signInWithCredential(credential);

        storeTokenAndData(userCredential);

        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (builder) => MainPage()),
                (route) => false);

        final user = userCredential.user;

        if(user != null) {

            log('user != null');
            log(user.displayName.toString());

            final SnackBar snackBar =
            SnackBar(content: Text(user.displayName.toString()));

            ScaffoldMessenger.of(context).showSnackBar(snackBar);

        } else {

          log('user == null');


        }






      }


    } catch(exception) {


      /*
      Fluttertoast.showToast(

          msg: exception.toString(),
          toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.amber,
        textColor: Colors.black,


      );*/


    }
  }

  Future<void> signOut ({required BuildContext context}) async {

        try {

          log('signout');


          await _googleSignIn.signOut();
          await _auth.signOut();
          await storage.delete(key: "token");

        }
        catch(exception) {

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(exception.toString()))
          );
        }

  }

  void storeTokenAndData(UserCredential userCredential) async {

    log("storing token and data...");

    await storage.write(key: "token", value: userCredential.credential?.token.toString());
    await storage.write(key: "user-credential", value: userCredential.toString());


  }

  Future<String?> getToken () async {

    String? token = await storage.read(key: "token");

    return token;

  }




}