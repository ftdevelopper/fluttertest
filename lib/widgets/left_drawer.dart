import 'package:flutter/material.dart';
import 'package:proyect_first/widgets/menu_list_title.dart';

class LeftDrawerWidget extends StatelessWidget {
  const LeftDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: Icon(
              Icons.face,
              size: 48.0,
              color: Colors.black,
            ),
            accountName: Text('Tomas Tisocco', style: TextStyle(color: Colors.black)),
            accountEmail: Text('kelien2010@hotmail.com', style: TextStyle(color: Colors.black)),
            otherAccountsPictures: <Widget>[
              Icon(
                Icons.bookmark_border,
                color: Colors.black,
              )
            ],
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Olympic.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          MenuListTitleWidget(),
        ],
      ),
    );
  }
}