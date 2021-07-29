// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'pages/animation_page.dart';
import 'pages/basic_widgets_page.dart';
import 'pages/bottom_navigator_page.dart';
import 'pages/custom_scrolview.dart';
import 'pages/fly_page.dart';
import 'pages/animation_controller_page.dart';
import 'pages/form_widget_page.dart';
import 'pages/gridview.dart';
import 'pages/image_and_icons_page.dart';
import 'pages/layouts_pages.dart';
import 'pages/listview_page.dart';
import 'pages/my_home_page.dart';
import 'pages/orientation_check_page.dart';
import 'pages/stack_page.dart';
import 'pages/stragged_animation_page.dart';
import 'pages/tabbar_page.dart';

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
        "kcustomsv":(BuildContext context) => CustomScrollViewPage(),
        "klayout":(BuildContext context) => LayoutPage(),
      },
    );
  }
}