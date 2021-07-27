import 'package:flutter/material.dart';
import 'package:proyect_first/pages/birthday.dart';
import 'package:proyect_first/pages/gratitude.dart';
import 'package:proyect_first/pages/reminders.dart';

class MenuListTitleWidget extends StatefulWidget {
  MenuListTitleWidget({Key? key}) : super(key: key);

  @override
  _MenuListTitleWidgetState createState() => _MenuListTitleWidgetState();
}

class _MenuListTitleWidgetState extends State<MenuListTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
       children: <Widget>[
         ListTile(
           leading: Icon(Icons.cake),
           title: Text('Birthdays'),
           onTap: (){
             Navigator.pop(context);
             Navigator.push(
               context,
               MaterialPageRoute(
                 builder: (context) => Birthdays(),
               )
             );
           },
         ),
         ListTile(
           leading: Icon(Icons.sentiment_satisfied),
           title: Text('Gratitude'),
           onTap: (){
             Navigator.pop(context);
             Navigator.push(
               context,
               MaterialPageRoute(
                 builder: (context) => Gratitude(),
               )
             );
           },
         ),
         ListTile(
           leading: Icon(Icons.alarm),
           title: Text('Reminders'),
           onTap: (){
             Navigator.pop(context);
             Navigator.push(
               context,
               MaterialPageRoute(
                 builder: (context) => Reminders(),
               )
             );
           },
         ),
         Divider(color: Colors.grey),
         ListTile(
           leading: Icon(Icons.settings),
           title: Text('Settings'),
           onTap: (){
             Navigator.pop(context);
           },
         ),
       ],
    );
  }
}