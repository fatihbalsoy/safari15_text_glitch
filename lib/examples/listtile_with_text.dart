// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ListTileExample extends StatefulWidget {
  static const routeName = "/listtiles";

  @override
  createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ListTileExample> {
  static String lorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sit amet nulla viverra, aliquet tortor in, ullamcorper nulla. In arcu diam, blandit sit amet quam quis, egestas mattis tortor. Proin nec placerat felis. Fusce rutrum faucibus porttitor. Integer varius tristique leo. Cras volutpat semper erat, id congue nulla venenatis eget.";
  static String lorem2 =
      "Maecenas rhoncus rutrum leo, in tempor quam volutpat ac. Nullam a rutrum augue. Nunc laoreet egestas purus, quis elementum tortor ullamcorper vel. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras pretium sollicitudin nibh quis volutpat. Orci varius natoque penatibus et magnis dis parturient montes, ";
  static String lorem3 =
      "nascetur ridiculus mus. Ut sodales fringilla pharetra. Nam id mattis purus, nec interdum nibh. Mauris varius nec tortor at tincidunt. Morbi sollicitudin lacus nunc. Sed placerat justo ligula, ac molestie risus eleifend et. Phasellus viverra diam et pretium egestas. Aliquam massa sapien, semper ac justo nec, tincidunt cursus erat. ";
  static String lorem4 =
      "Phasellus eu mi ac massa porttitor ornare dignissim eu mi. Mauris massa nunc.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListTiles in Cards"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              card("Website", "example.com", "web", "https://example.com"),
              card("Github", "Where the world builds software", "github",
                  "https://github.com"),
              card("Lorem 1", lorem, "numeric1", ""),
              card("Lorem 2", lorem2, "numeric2", ""),
              card("Lorem 3", lorem3, "numeric3", ""),
              card("Lorem 4", lorem4, "numeric4", ""),
            ],
          ),
        ));
  }

  Widget card(String title, String subtitle, String icon, String url) {
    return Card(
        child: ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: () => launch(url == "" ? "https://example.com" : url),
      leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Icon(
            MdiIcons.fromString(icon),
          )),
    ));
  }
}
