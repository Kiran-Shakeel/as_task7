import 'dart:ui';

import 'package:flutter/material.dart';

class Chatting extends StatefulWidget {
  const Chatting({Key? key}) : super(key: key);

  @override
  _ChattingState createState() => _ChattingState();
}

class _ChattingState extends State<Chatting> {
  TextEditingController textController = TextEditingController();
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          if (pressed == true)
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 30, right: 20, left: 20),
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Text(
                        textController.text,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(left: 20),
              color: Colors.blue,
              child: TextFormField(
                controller: textController,
                minLines: 2,
                maxLines: 2,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Enter your message",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            pressed = true;
                          });
                        },
                        icon: Icon(Icons.send, color: Colors.white))),
              ),
            ),
          )
        ],
      )),
    );
  }
}
