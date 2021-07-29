import 'package:flutter/material.dart';
import 'package:proyect_first/widgets/stack.dart';
import '../widgets/stack_favorite.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Page')
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (BuildContext context, int index){
            if (index.isEven){
              return const StackWidget();
            } else {
              return const StackFavoriteWidget();
            }
          },
        )
      ),
    );
  }
}