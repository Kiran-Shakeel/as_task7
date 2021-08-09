import 'package:flutter/material.dart';
int _selectedIndex=0;
class MyTheme {
  
  BottomNavigationBar bottom =
      BottomNavigationBar(
       
        currentIndex: _selectedIndex,
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
  ]);
}
