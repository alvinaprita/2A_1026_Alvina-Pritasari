import 'package:flutter/material.dart';
import './nav-drawer.dart';

void main() {
  runApp(MaterialApp(
    title: "belajardraweralvina.com",
    home: BelajarNavigationDrawer(),
  ));
}
class BelajarNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black
              title: Text("RESOOMUSIC"),
              bottom: TabBar(
                tabs: [
                  new Tab(icon: Icon(Icons.audiotrack), text: "Song"),
                  new Tab(icon: Icon(Icons.assignment_sharp), text: "Album"),
                  new Tab(icon: Icon(Icons.offline_bolt), text: "Offline")
                ],
              ),
            ),
            drawer: DrawerWidget(),
            body: TabBarView(
              children: <Widget>[
                new songs(),
                new album(),
                new offline(),
              ],
            )));
  }
}
  