import 'package:flutter/material.dart';
import 'package:proyect_first/widgets/menu_list_title.dart';

class RightDrawerWidget extends StatelessWidget {
  const RightDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Icon(
              Icons.face,
              size: 128.0,
              color: Colors.white54,
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          MenuListTitleWidget(),
        ]
      ),
    );
  }
}