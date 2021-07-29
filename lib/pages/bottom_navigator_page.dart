  // ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../widgets/birthday.dart';
import '../widgets/gratitude.dart';
import '../widgets/reminders.dart';

class BottomNavigatorPage extends StatefulWidget {
  BottomNavigatorPage({Key? key}) : super(key: key);

  @override
  _BottomNavigatorPageState createState() => _BottomNavigatorPageState();
}

class _BottomNavigatorPageState extends State<BottomNavigatorPage> {
  int _currentIndex = 0;
  List _listPages = [];
  late Widget _currentPage;

  @override
  void initState(){
    super.initState();

    _listPages
    ..add(Birthdays())
    ..add(Gratitude())
    ..add(Reminders());
    _currentPage = Birthdays();
  }

  void _changePage([int? selectedIndex]){
    setState((){
      _currentIndex = selectedIndex!;
      _currentPage = _listPages[selectedIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Bottom Navigation Bar')
       ),
       body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: _currentPage,
         ),
       ),
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            title: Text('Birthdays'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sentiment_satisfied),
            title: Text('Gratitude'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            title: Text('Reminders')
          ),
        ],
        onTap: (selectedIndex) => _changePage(selectedIndex),
      ),
    );
  }
}