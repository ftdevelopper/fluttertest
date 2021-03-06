import 'package:flutter/material.dart';
import 'package:proyect_first/widgets/silver_app_bar.dart';
import 'package:proyect_first/widgets/sliver_grid.dart';
import 'package:proyect_first/widgets/sliver_list.dart';

class CustomScrollViewPage extends StatelessWidget {
  const CustomScrollViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:CustomScrollView(
          slivers: <Widget>[
            const SilverAppBarWidget(),
            const SliverListWidget(),
            const SliverGridWidget(),
          ],
        ),
      ),
    );
  }
}