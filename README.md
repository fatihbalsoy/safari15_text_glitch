# Flutter and CanvasKit - Safari 15 Text Rendering Bug

This project displays examples of code that is capable of crashing Apple Safari 15.0 on iOS 15 and any macOS capable of running Safari 15.

This bug seems to be caused by changes made by Safari 15 which cannot be handled by CanvasKit. During my testing I've found that text with more than 352 characters (on 8GB RAM) crashes Safari 15. No issues are present when the project is compiled with the HTML renderer.

The main page was designed so that it does not crash until one of the examples are clicked.


## Configuration:

Format: `Config` `Version` `(Platform Stability / Branch)`
- Safari 15.0 (Release Candidate)
    - WebKit 605.1.15
- Flutter Web 2.5.0 (Stable)
    - Dart 2.14.0
    - CanvasKit 0.28.1
    - Flutter SDK 2.6.0
    - Flutter SDK 2.12.0
- macOS Big Sur 11 (Stable)
- macOS Monterey 12 (Beta)
- iPadOS & iOS 15 (Release Candidate)
- 8GB Memory on all devices

## Build & Run

```console
flutter run --release -d Chrome --web-renderer canvaskit
```

## Simple Example
```dart
import 'package:flutter/material.dart';
import 'dart:math';

class JustTextExample extends StatefulWidget {
  @override
  createState() => _JustTextExampleState();
}

class _JustTextExampleState extends State<JustTextExample> {
    String longText = "";

    @override
    void initState() {
        super.initState();
        // * 1000 bytes of text * //
        // Anything above 352 crashes on 8GB RAM
        longText = generateRandomString(1000);
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
              title: Text("Simple Text Example"),
            ),
            // * Text Widget * //
            body: Text(longText));
    }
    
    // * Random String Generator * //
    String generateRandomString(int length) {
      var random = Random();
      const characters =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
      return List.generate(
        length, (index) => 
            characters[random.nextInt(characters.length)]).join();
    }
}
```