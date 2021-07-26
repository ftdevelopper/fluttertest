import 'package:flutter/material.dart';
import 'package:proyect_first/widgets/animated_olympics.dart';

class TenthPage extends StatelessWidget {
  const TenthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Decima Pag'),
        backgroundColor: Colors.indigo,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget> [
                AnimatedOlympicWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}