import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:todo/service/AuthClass.dart';
import 'package:todo/util/ReservedWord.dart' as ReservedWord;

import 'package:todo/custom__ui/ButtonUI.dart';

class SignInPage extends StatefulWidget {

  SignInPage({super.key});

  @override
  State<StatefulWidget> createState() => _SignInPageState();

}

class _SignInPageState extends State<SignInPage> {

  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;

  bool circular = false;
  AuthClass authClass = AuthClass();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(

        child: Container(

          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,

                ),
              ),

              SizedBox(
                height: 50,
              ),

              ButtonUI(onClick: () {

                authClass.googleSignIn(context);

              }, text: "Continue With Google!!!", size: 25,),

              SizedBox(
                height: 50,
              ),

              TextButton(

                  onPressed: () {

                    authClass.googleSignIn(context);
                  },
                  child: Text("Test Button"))



            ],

          ),

        ),
      ),
    );
  }



}