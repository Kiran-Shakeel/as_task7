import 'package:as_task7/theme/bottom_navigation.dart';
import 'package:as_task7/theme/tabBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBarContent(),
        body: TabBarView(
          children: [
            IncommingCalls(),
            IncommingCalls(),
            IncommingCalls(),
          ],
        ),
        bottomNavigationBar: MyTheme().bottom,
      ),
    );
  }
}

class IncommingCalls extends StatelessWidget {
  const IncommingCalls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
