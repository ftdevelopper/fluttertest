// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use, unnecessary_this

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController nameTextController;
  late TextEditingController lastNameTextController;

  late String nameValue;
  late String lastNameValue;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade900,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Beginner Flutter Exercises"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              RaisedButton(
                color: Colors.grey,
                child: Text("Basic Widgets", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                onPressed: (){
                _quickShowPage(context, "/basicwidget");
               },
              ),
              RaisedButton(
                color: Colors.blueAccent,
                child: Text("Image and Icons", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                onPressed: (){
                _quickShowPage(context, "/imageandicons");
               },
              ),
              RaisedButton(
                color: Colors.grey,
                child: Text("Form Widget", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                onPressed: (){
                _quickShowPage(context, "/formatwidget");
               },
              ),
              RaisedButton(
                color: Colors.blueAccent,
                child: Text("Orientation Check", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                onPressed: (){
                _quickShowPage(context, "/orientationcheck");
               },
              ),
              RaisedButton(
                color: Colors.grey,
                child: Text("Animataions", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                onPressed: (){
                _quickShowPage(context, "/animation");
               },
              ),
              RaisedButton(
                color: Colors.blueAccent,
                child: Text("Animation Controller", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                onPressed: (){
                _quickShowPage(context, "/animationcontroller");
               },
              ),
              RaisedButton(
                color: Colors.grey,
                child: Text("Stargged Animation", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                onPressed: (){
                _quickShowPage(context, "/straggedanimation");
               },
              ),
              GestureDetector(
                child: Hero(
                  tag: 'format_paint',
                  child: Icon(
                    Icons.format_paint,
                    color: Colors.lightGreen,
                    size:80,
                  )
                ),
                onTap: (){
                  Navigator.of(context).pushNamed("/fly");
                }
              ),
              RaisedButton(
                color: Colors.grey,
                child: Text("Bottom Navigation Bar", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                onPressed: (){
                _quickShowPage(context, "/bottomnavigator");
               },
              ),
              RaisedButton(
                color: Colors.blueAccent,
                child: Text("TabBar and TabBarView", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                onPressed: (){
                _quickShowPage(context, "/tabbar");
               },
              ),
              RaisedButton(
                color: Colors.grey,
                child: Text("List View ", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                onPressed: (){
                _quickShowPage(context, "/listview");
               },
              ),
              RaisedButton(
                color: Colors.blueAccent,
                child: Text("Grid View ", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                onPressed: (){
                _quickShowPage(context, "/gridview");
               },
              ),
              RaisedButton(
                color: Colors.grey,
                child: Text("Stack ", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                onPressed: (){
                _quickShowPage(context, "/stack");
               },
              ),
              RaisedButton(
                color: Colors.blueAccent,
                child: Text("Custom Sroll View ", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                onPressed: (){
                _quickShowPage(context, "/customsv");
               },
              ),
              RaisedButton(
                color: Colors.grey,
                child: Text("Layout ", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                onPressed: (){
                _quickShowPage(context, "/layout");
               },
              ),
              RaisedButton(
                color: Colors.blueAccent,
                child: Text("Drag And Drop", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                onPressed: (){
                _quickShowPage(context, "/draganddrop");
               },
              ),
              RaisedButton(
                color: Colors.grey,
                child: Text("Gestures and Scale", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                onPressed: (){
                _quickShowPage(context, "/gesturesscale");
               },
              ),
            ] 
          ),
        )
      )
    );
  }

  void _quickShowPage(BuildContext context, String _direction){
    Navigator.of(context).pushNamed(_direction);
  }

  @override
  void initState() {
    super.initState();
    nameTextController = TextEditingController();
    lastNameTextController = TextEditingController();
    nameValue = "";
    lastNameValue = "";
  }

  @override
  void dispose() {
    super.dispose();
    nameTextController.dispose();
    lastNameTextController.dispose();
  }
}