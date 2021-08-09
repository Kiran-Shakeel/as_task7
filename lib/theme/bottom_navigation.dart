import 'package:as_task7/pages/Camera.dart';
import 'package:as_task7/pages/chatpage.dart';
import 'package:as_task7/pages/homepage.dart';
import 'package:flutter/material.dart';

class BNavigation extends StatefulWidget {
  const BNavigation({Key? key}) : super(key: key);

  @override
  _BNavigationState createState() => _BNavigationState();
}

class _BNavigationState extends State<BNavigation> {
  int _selectedIndex = 0;

  List<Widget> options = <Widget>[
    HomePage(),
    CameraPage(),
    Chatting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
                color: Colors.blue,
              ),
              label: "CALL",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.camera,
                color: Colors.blue,
              ),
              label: "CAMERA",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                color: Colors.blue,
              ),
              label: "CHAT",
            )
          ]),
      body: options.elementAt(_selectedIndex),
    );
  }
}
