import 'package:flutter/material.dart';

class Info extends StatelessWidget{

  String number;
  String word;

  Info({this.number, this.word});
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50.0,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget>[
          Text(
            number,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14.0,
                color: const Color(0xffffffff)
            ),
          ),
          Text(
            word,
            textAlign: TextAlign.center,
            style: TextStyle(

                fontSize: 11.0,
                color: const Color(0xffffffff)
            ),
          ),

        ]));
  }

}