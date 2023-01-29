import 'package:flutter/material.dart';
import 'package:todo/service/AuthClass.dart';
import 'package:todo/main.dart';

class MainPage extends StatefulWidget {

  MainPage ({super.key});

  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  AuthClass authClass = AuthClass();

  @override
  Widget build(BuildContext context) {

    return Scaffold (

      appBar: AppBar (

                actions: [

                  IconButton(

                    onPressed: () async {

                      await authClass.signOut(context: context);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (builder)=> ToDoApp()),
                              (route) => false);
                      },
                    icon: Icon(Icons.logout_outlined),



                  )
                ],
      ),
    );
  }

}