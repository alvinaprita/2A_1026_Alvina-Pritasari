import 'package:flutter/material.dart';

class Contohappbar extends StatefulWidget {
  @override
  _ContohappbarState createState() => _ContohappbarState();
}

class _ContohappbarState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.supervised_user_circle),
            onPressed: () {},
          ),
          title: Text("Ini AppBar"),
          actions: [
            // action button
            IconButton(
              icon: Icon(Icons.add_circle),
              onPressed: () {
                //action
              },
            ),
            // action button
            IconButton(
              icon: Icon(Icons.add_location),
              onPressed: () {
                //action
              },
            ),
          ]),
      body: Center(
        child: Text("ini body"),
      ),
    );
  }
}
