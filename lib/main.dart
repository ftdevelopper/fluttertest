// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:proyect_first/pages/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:proyect_first/pages/second_page.dart';
import 'package:proyect_first/pages/third_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyHomePage(),
      //home: MyHomePage(),
      initialRoute: "k",
      routes: {
        "khome":(BuildContext context) => MyHomePage(),
        "ksecond":(BuildContext context) => SecondPage(),
        "kthird":(BuildContext context) => ThirdPage(),
      },
    );
  }
}