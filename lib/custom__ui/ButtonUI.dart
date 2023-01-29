import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonUI extends StatelessWidget {

  const ButtonUI (
  {
    required this.onClick,
    required this.text,
    required this.size,
    super.key
  }
      );

  final String text;
  final Function onClick;
  final double size;

  @override
  Widget build(BuildContext context) {


    return InkWell(

      onTap: () {},

      child: Container(

        height: 60,
        width: MediaQuery.of(context).size.width - 60,

        child: Card(

          color: Colors.blueAccent,
          shape: RoundedRectangleBorder(

            side: BorderSide(color: Colors.green, width: 1),
            borderRadius: BorderRadius.circular(15)

          ),
          child: Padding (
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /**SvgPicture.asset(
                  imagePath,
                  height: size,
                  width: size,
                ),**/
                SizedBox(width: 15),
                Text(
                    text,
                    style: TextStyle(fontSize: 17, color: Colors.white)
                )
              ],
            ),

          ),
        ),
      ),

    );
  }

}