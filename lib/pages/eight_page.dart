import 'package:flutter/material.dart';
import 'package:proyect_first/widgets/animated_container.dart';
import 'package:proyect_first/widgets/animated_cross_fade.dart';

class EigthPage extends StatefulWidget {
  EigthPage({Key? key}) : super(key: key);

  @override
  _EigthPageState createState() => _EigthPageState();
}

class _EigthPageState extends State<EigthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Animations'),
       ),
       body: SafeArea(
         child: Column(
           children: <Widget>[
             AnimatedContainerWidget(),
             Divider(),
             AnimatedCrossFadeWidget(),
           ],
        ),
      ),
    );
  }
}