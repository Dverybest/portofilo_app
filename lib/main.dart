import 'package:flutter/material.dart';
import 'package:dverybest2/Components/drawer_head.dart';
import 'package:dverybest2/Pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Dverybest',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primaryColor: const Color(0xff6d0000),
      primaryColorDark: const Color(0xff580000),
      ),
      home: HomePage(),
    );
  }


}

class DrawerItem{
  String title;
  IconData iconData;
  DrawerItem(this.title,this.iconData);
}

class HomePage extends StatefulWidget{

  final drawerItems =[
    DrawerItem('Home',Icons.home),
    DrawerItem('About us',Icons.info_outline),
    DrawerItem('Contact us',Icons.contact_phone)
  ];

  @override
  State<StatefulWidget> createState() {


    return _HomePage();
  }

}

class _HomePage extends State<HomePage>{

  int _selectedIndex =0;

  _getDrawerItemWidget(int position){

    switch (position){
      case 0:
        return Home();
      case 1:
        return About();
      case 2:
        return Contact();
      default:
        return Text('Error');
    }
  }
  _onSelectItem(int index){
    setState(() {
      _selectedIndex = index;
    });
    Navigator.of(context).pop(); //close drawer
  }

  @override
  Widget build(BuildContext context) {

    var drawerOptions = <Widget>[];

    for(var i = 0;i<widget.drawerItems.length;i++){
      var d = widget.drawerItems[i];
      drawerOptions.add(
          new ListTile(
            leading: Icon(d.iconData),
            title: Text(d.title),
            selected: i==_selectedIndex,
            onTap: ()=>_onSelectItem(i),
          )
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(_selectedIndex==0?'Dverybest' :widget.drawerItems[_selectedIndex].title),

      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHead(),
            Column(
              children: drawerOptions,
            )
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedIndex),
      backgroundColor: const Color(0xfff0f0f0),
    );
  }
}
