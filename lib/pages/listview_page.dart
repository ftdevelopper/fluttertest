import 'package:flutter/material.dart';
import 'package:proyect_first/widgets/header.dart';
import 'package:proyect_first/widgets/row.dart';
import 'package:proyect_first/widgets/row_with_card.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index){
            if (index == 0){
              return HeaderWidget(index: index);
            } else if (index >= 1 && index <= 3){
              return RowWithCardWidget(index: index);
            } else {
              return RowWidget(index: index);
            }
          },
        ),
      ),
    );
  }
}