import 'dart:ui';

import 'package:flutter/material.dart';

class AppBarContent extends StatefulWidget implements PreferredSizeWidget {
  const AppBarContent({Key? key}) : super(key: key);

  @override
  _AppBarContentState createState() => _AppBarContentState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppBarContentState extends State<AppBarContent> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TabBar(
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.blue,
              tabs: [
                Tab(
                  text: 'Incomming',
                ),
                Tab(text: 'Ongoing'),
                Tab(text: 'Missed')
              ])
        ],
      ),

      //bottom
    );
  }
}
