import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  double height;
  Header({this.height});
  @override
  Widget build(BuildContext context) {

    return Container(
        height: height,
        child:Stack(
        fit:StackFit.expand,
        children:<Widget>[
        Image.asset(
      'assets/header.jpg',
      fit: BoxFit.fill,
     
    ),
        DecoratedBox(
          decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset.bottomRight,
            end: FractionalOffset.bottomLeft,
            colors: [
              const Color(0xFFa1000000),
              const Color(0xFFa1000000)
            ]
          )
        )),


        ]))
    ;
  }

}