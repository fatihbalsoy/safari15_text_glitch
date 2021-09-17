// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

class JustTextExample extends StatefulWidget {
  static const routeName = "/justtext";
  JustTextExample({Key? key, this.length = 0}) : super(key: key);
  int length = 0;

  @override
  createState() => _JustTextExampleState();
}

class _JustTextExampleState extends State<JustTextExample> {
  String longText = "";

  @override
  void initState() {
    super.initState();
    // 8GB RAM
    // Tested for: 256 < x < 512
    // 256: Pass
    // 352: Pass
    // 353: Displays, Failed
    // 354: Displays, Failed
    // 356: Fail
    // 360: Fail
    // 368: Fail
    // 512: Fail
    longText = generateRandomString(widget.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Random Text"),
        ),
        body: Text(longText));
  }

  String generateRandomString(int length) {
    var random = Random();
    const characters =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return List.generate(
            length, (index) => characters[random.nextInt(characters.length)])
        .join();
  }
}
