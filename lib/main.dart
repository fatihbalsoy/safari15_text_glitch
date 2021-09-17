// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_safari15_crash/examples/background_text_design.dart';
import 'package:flutter_safari15_crash/examples/expansiontile_with_text.dart';
import 'package:flutter_safari15_crash/examples/just_text.dart';
import 'package:flutter_safari15_crash/examples/listtile_with_text.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(),
        JustTextExample.routeName + "256": (context) =>
            JustTextExample(length: 256),
        JustTextExample.routeName + "352": (context) =>
            JustTextExample(length: 352),
        JustTextExample.routeName + "353": (context) =>
            JustTextExample(length: 353),
        JustTextExample.routeName + "512": (context) =>
            JustTextExample(length: 512),
        JustTextExample.routeName + "1024": (context) =>
            JustTextExample(length: 1024),
        BackgroundTextDesign.routeName: (context) => BackgroundTextDesign(),
        ExpansionTileExample.routeName: (context) => ExpansionTileExample(),
        ListTileExample.routeName: (context) => ListTileExample()
      },
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).size.width * 0.1;
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Web - Safari 15 Examples'),
        ),
        body: Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: padding, right: padding),
            child: ListView(
              children: [
                ListTile(
                  title: Text(
                      "Just random text (256 bytes, should not crash, 8GB RAM)"),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.pushNamed(
                      context, JustTextExample.routeName + "256"),
                ),
                ListTile(
                  title: Text(
                      "Just random text (352 bytes, should not crash, 8GB RAM)"),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.pushNamed(
                      context, JustTextExample.routeName + "352"),
                ),
                ListTile(
                  title: Text(
                      "Just random text (353 bytes, should crash, 8GB RAM)"),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.pushNamed(
                      context, JustTextExample.routeName + "353"),
                ),
                ListTile(
                  title: Text(
                      "Just random text (512 bytes, should crash, 8GB RAM)"),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.pushNamed(
                      context, JustTextExample.routeName + "512"),
                ),
                ListTile(
                  title: Text(
                      "Just random text (1024 bytes, should crash, 8GB RAM)"),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.pushNamed(
                      context, JustTextExample.routeName + "1024"),
                ),
                ListTile(
                  title: Text("1092 bytes of text in background"),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.pushNamed(
                      context, BackgroundTextDesign.routeName),
                ),
                ListTile(
                  title: Text("Expansion Tiles with HTML content"),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.pushNamed(
                      context, ExpansionTileExample.routeName),
                ),
                ListTile(
                  title: Text("List Tiles in Cards"),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () =>
                      Navigator.pushNamed(context, ListTileExample.routeName),
                )
              ],
            )));
  }
}
