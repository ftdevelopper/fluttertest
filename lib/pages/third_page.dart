import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super (key: key);

  @override 
  Widget build(BuildContext context) {

    ThirdPageArguments arguments = ModalRoute.of(context)!.settings.arguments as ThirdPageArguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tercera pantalla"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Text(arguments.name),
              Text(arguments.lastName),
          ],
        ),
      ),
    );
  }
}

class ThirdPageArguments{
  String name;
  String lastName;
  ThirdPageArguments({required this.name, required this.lastName});
}