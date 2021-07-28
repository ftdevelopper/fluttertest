import 'package:flutter/material.dart';
import 'package:proyect_first/widgets/gridvew_builder.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Page'),
      ),
      body: SafeArea(
        child: const GridViewBuilderWidget(),
      ),
    );
  }
}