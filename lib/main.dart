// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:proyect_first/pages/fourth_page.dart';
import 'package:proyect_first/pages/gridview.dart';
import 'package:proyect_first/pages/listview_page.dart';
import 'package:proyect_first/pages/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:proyect_first/pages/second_page.dart';
import 'package:proyect_first/pages/sixth_page.dart';
import 'package:proyect_first/pages/stack_page.dart';
import 'package:proyect_first/pages/third_page.dart';
import 'package:proyect_first/pages/fifth_page.dart';
import 'pages/eight_page.dart';
import 'pages/eleventh_page.dart';
import 'pages/fly_page.dart';
import 'pages/nineth_page.dart';
import 'pages/seventh_page.dart';
import 'pages/tenty_page.dart';
import 'pages/twelve_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyHomePage(),
      initialRoute: "k",
      routes: {
        "khome":(BuildContext context) => MyHomePage(),
        "ksecond":(BuildContext context) => SecondPage(),
        "kthird":(BuildContext context) => ThirdPage(),
        "kfourth":(BuildContext context) => FourthPage(),
        "kfifth":(BuildContext context) => FifthPage(),
        "ksixth":(BuildContext context) => SixthPage(),
        "kseventh":(BuildContext context) => SeventhPage(),
        "keigth":(BuildContext context) => EigthPage(),
        "knineth":(BuildContext context) => NinethPage(),
        "ktenth":(BuildContext context) => TenthPage(),
        "kfly":(BuildContext context) => FlyPage(),
        "keleventh":(BuildContext context) => ElevenPage(),
        "ktwelveth":(BuildContext context) => TwelvePage(),
        "klistview":(BuildContext context) => ListViewPage(),
        "kgridview":(BuildContext context) => GridViewPage(),
        "kstack":(BuildContext context) => StackPage(),
      },
    );
  }
}