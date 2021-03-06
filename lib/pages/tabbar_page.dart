import 'package:flutter/material.dart';
import 'package:proyect_first/widgets/birthday.dart';
import 'package:proyect_first/widgets/gratitude.dart';
import 'package:proyect_first/widgets/left_drawer.dart';
import 'package:proyect_first/widgets/right_drawer.dart';
import '../widgets/reminders.dart';

class TabBarPage extends StatefulWidget {
  TabBarPage({Key? key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() { 
    super.initState();
    
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_tabChanged);
  }

  @override
  void dispose(){
    super.dispose();
    _tabController.dispose();
  }

  void _tabChanged(){
    if (_tabController.indexIsChanging){
      print('tabChanger: ${_tabController.index}');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      drawer: const LeftDrawerWidget(),
      endDrawer: const RightDrawerWidget(),
      body: SafeArea(
        child: TabBarView(
          controller: _tabController,
          children: [
            Birthdays(),
            Gratitude(),
            Reminders(),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.black54,
          unselectedLabelColor: Colors.black38,
          tabs: [
            Tab(
              icon: Icon(Icons.cake),
              text: 'Birthdays'
            ),
            Tab(
              icon: Icon(Icons.sentiment_satisfied),
              text: 'Gratitude',
            ),
            Tab(
              icon: Icon(Icons.access_alarm),
              text: 'Reminders'
            )
          ],
        ),
      ),
    );
  }
}
