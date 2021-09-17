// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BackgroundTextDesign extends StatefulWidget {
  static const routeName = "/1092design";

  @override
  createState() => _BackgroundTextDesignState();
}

class _BackgroundTextDesignState extends State<BackgroundTextDesign> {
  static String lorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sit amet nulla viverra, aliquet tortor in, ullamcorper nulla. In arcu diam, blandit sit amet quam quis, egestas mattis tortor. Proin nec placerat felis. Fusce rutrum faucibus porttitor. Integer varius tristique leo. Cras volutpat semper erat, id congue nulla venenatis eget. Maecenas rhoncus rutrum leo, in tempor quam volutpat ac. Nullam a rutrum augue. Nunc laoreet egestas purus, quis elementum tortor ullamcorper vel. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras pretium sollicitudin nibh quis volutpat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut sodales fringilla pharetra. Nam id mattis purus, nec interdum nibh. Mauris varius nec tortor at tincidunt. Morbi sollicitudin lacus nunc. Sed placerat justo ligula, ac molestie risus eleifend et. Phasellus viverra diam et pretium egestas. Aliquam massa sapien, semper ac justo nec, tincidunt cursus erat. Phasellus eu mi ac massa porttitor ornare dignissim eu mi. Mauris massa nunc.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("1092 bytes of text in background"),
        ),
        body: Stack(children: [
          Container(
              alignment: Alignment.center,
              child: Transform.scale(
                  scale: 1.4,
                  child: Text(lorem,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.robotoMono(
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                        color: Colors.blue.withOpacity(0.2),
                      )))),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(50),
            child: Text(
              "Lorem Ipsum",
              style: GoogleFonts.robotoMono(
                  color: Colors.blue,
                  fontSize: 90,
                  fontWeight: FontWeight.w900),
            ),
          )
        ]));
  }
}
