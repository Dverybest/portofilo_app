import 'package:flutter/material.dart';
import 'package:dverybest2/Components/header.dart';

class DrawerHead extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 200.0,
      color: Colors.blueGrey[800],

      child: Column(
        crossAxisAlignment:CrossAxisAlignment.stretch ,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
        Header(height:200.0)
        ],
      ),
    );
  }

}