import 'package:flutter/material.dart';
import 'package:proyect_first/widgets/animated_container.dart';
import 'package:proyect_first/widgets/animated_cross_fade.dart';
import 'package:proyect_first/widgets/animated_opacity.dart';

class AnimationPage extends StatefulWidget {
  AnimationPage({Key? key}) : super(key: key);

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
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
             Divider(),
             AnimatedOpacityWidget(),
           ],
        ),
      ),
    );
  }
}