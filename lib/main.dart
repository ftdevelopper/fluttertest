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
      initialRoute: "/",
      routes: {
        "/home":(BuildContext context) => MyHomePage(),
        "/basicwidget":(BuildContext context) => FourthPage(),
        "/imageandicons":(BuildContext context) => FifthPage(),
        "/formatwidget":(BuildContext context) => SixthPage(),
        "/orientationcheck":(BuildContext context) => SeventhPage(),
        "/animation":(BuildContext context) => EigthPage(),
        "/animationcontroller":(BuildContext context) => NinethPage(),
        "/straggedanimation":(BuildContext context) => TenthPage(),
        "/fly":(BuildContext context) => FlyPage(),
        "/bottomnavigator":(BuildContext context) => ElevenPage(),
        "/tabbar":(BuildContext context) => TwelvePage(),
        "/listviw":(BuildContext context) => ListViewPage(),
        "/gridview":(BuildContext context) => GridViewPage(),
        "/stack":(BuildContext context) => StackPage(),
        "/customsv":(BuildContext context) => CustomScrollViewPage(),
        "/layout":(BuildContext context) => LayoutPage(),
      },
    );
  }
}