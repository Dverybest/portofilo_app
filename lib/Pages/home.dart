import 'package:flutter/material.dart';
import 'package:dverybest2/Components/header.dart';
import 'package:dverybest2/Components/info.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: <Widget>[
      Container(
      height: 250.0,
      child:Stack(
          fit:StackFit.expand,
          children: <Widget>[
            Header(height: 250.0),
            Column(
              crossAxisAlignment:CrossAxisAlignment.stretch ,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
            children:<Widget>[

              Image.asset(
                'assets/dbw.png',
                fit: BoxFit.contain,
                height: 120.0,
                width: 120.0,
                alignment: AlignmentDirectional.center,
            ),
            Text(
              'Dverybest IT Solutions Ltd.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
                color: const Color(0xffffffff)
              ),
            ),
              Text(
                'Best mobile apps develoment company in Nigeria.',
                textAlign: TextAlign.center,
                style: TextStyle(

                    fontSize: 13.0,
                    color: const Color(0xffffffff)
                ),
              ),
            SizedBox(height: 20.0,),
            Container(
              height: 40.0,
              color: const Color(0xff0fffffff),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Info(
                    number: '20+',
                    word: 'completed',
                  ),
                  Info(
                    number: '3',
                    word: 'Developing',
                  ),
                  Info(
                    number: '0',
                    word: 'In Queue',
                  ),
                ],
              ),
            ),

            ] ,
            )

          ]),
        ),
      SizedBox(
        height: 10.0,
      ),

      Padding(
      padding: EdgeInsets.all(0),
    child: Column(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.games,color:Colors.blue),
        title: Text(
          'STRATEGY & ARCHITECTURE',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w500,
              letterSpacing: 0.1
          ),
        ),
        subtitle:  Text(
          'We develop a one-page business model that captures your vision and goals, and we use it to create a minimum viable product (MVP) '
              'that we can immediately start building on',
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.normal,
            letterSpacing: 0.1
          ), textAlign: TextAlign.justify,
        ),
      ),
      ListTile(
        leading: Icon(Icons.access_time,color:Colors.green),
        title: Text(
          'DAILY INTERNAL BUILDS',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w500,
              letterSpacing: 0.1
          ),
        ),
        subtitle:  Text(
          'Your project manager meets with the team every day to ensure everyone is meeting goals and getting the support they need'
              ,
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.normal,
              letterSpacing: 0.1
          ), textAlign: TextAlign.justify,
        ),
      ),
      ListTile(
        leading: Icon(Icons.calendar_today,color:Colors.purple),
        title: Text(
          'WEEKLY DELIVERABLES',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w500,
              letterSpacing: 0.1
          ),
        ),
        subtitle:  Text(
          "The product is in your hands every week. You 'll be able to use it, provide feedback, and discuss challenges with the team"
        ,
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.normal,
              letterSpacing: 0.1
          ),
          textAlign: TextAlign.justify,
        ),
      )
    ],
    ),
    )

      ],
    );
  }

}

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Text('About');
  }

}

class Contact extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Text('Contact');
  }

}