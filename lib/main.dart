import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo/service/AuthClass.dart';
import 'package:todo/pages/SingInPage.dart';
import 'package:todo/pages/MainPage.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'dart:developer';



void main() async {


  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  runApp(ToDoApp());
}

class ToDoApp extends StatefulWidget {

  ToDoApp({super.key});

  @override
  State<StatefulWidget> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {

  AuthClass authClass = AuthClass();
  Widget page = SignInPage();


  @override
  void initState() {
    super.initState();


    confirmSignIn();
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: page,
    );
  }

  confirmSignIn () async {

    String? token = await authClass.getToken();


    log('what is log ????????????');

    if(token != null) {

      setState(() {
        page = MainPage();

        log('main');
        log(token.toString());




      });
    } else {

      setState(() {
        page = SignInPage();

        log('signin');
        log(token.toString());

      });
    }
  }



}


