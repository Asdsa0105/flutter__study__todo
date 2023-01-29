import 'package:flutter/material.dart';

class TextUI extends StatelessWidget {

  const TextUI ({

    required Key key,
    required this.labelText

  }) : super(key: key);

  final String labelText;


  @override
  Widget build(BuildContext context) {

    return Container(

      height: 56,
      width: MediaQuery.of(context).size.width - 70,
      child: TextFormField(

        decoration: InputDecoration(

          labelText: labelText,
          labelStyle: TextStyle(

            color: Colors.white,
            fontSize: 17,
          ),

          enabledBorder: OutlineInputBorder(

              borderSide: BorderSide(color:  Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(15)
          ),

          border: OutlineInputBorder(

              borderSide: BorderSide(color:  Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(15)
          ),


        ),
      ),
    );

  }


}