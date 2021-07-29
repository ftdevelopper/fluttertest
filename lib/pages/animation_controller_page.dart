import 'package:flutter/material.dart';
import 'package:proyect_first/widgets/animated_baloon.dart';

class NinethPage extends StatelessWidget {
  const NinethPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novena Pantalla'),
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                AnimatedBalloonWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}