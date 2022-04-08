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
        length: 5,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green[100],
              title: Text("ABOUT ME"),
              bottom: TabBar(
                tabs: [
                  new Tab(icon: Icon(Icons.arrow_forward_ios_outlined), text: "Profile"),
                  new Tab(icon: Icon(Icons.assignment_sharp), text: "Portofolio"),
                  new Tab(icon: Icon(Icons.account_box_rounded), text: "Contact"),
                  new Tab(icon: Icon(Icons.photo), text: "Galery"),
                  new Tab(icon: Icon(Icons.settings), text: "Settings")
                ],
              ),
            ),
            drawer: DrawerWidget(),
            body: TabBarView(
              children: <Widget>[
                new profile(),
                new portofolio(),
                new contact(),
              ],
            )));
  }
}
