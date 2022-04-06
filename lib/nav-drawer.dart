import 'package:flutter/material.dart';
class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.audiotrack,
              text: 'song',
              onTap: () => print('Tap My Files')),
          _drawerItem(
              icon: Icons.assignment_sharp,
              text: 'Album',
              onTap: () => print('Tap Shared menu')),
          _drawerItem(
              icon: Icons.offline_bolt,
              text: 'Offline',
              onTap: () => print('Tap Recent menu')),
          _drawerItem(
              icon: Icons.delete,
              text: 'Trash',
              onTap: () => print('Tap Trash menu')),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Labels",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(
              icon: Icons.bookmark,
              text: 'Family',
              onTap: () => print('Tap Family menu')),
        ],
      ),
    );
  }
}
Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
          image: AssetImage('assets/images/gambar.jpg'), fit: BoxFit.cover),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(
            image: AssetImage('assets/images/gambar.jpg'), fit: BoxFit.cover),
      ),
      ClipOval(
        child: Image(
            image: AssetImage('assets/images/gambar.jpg'), fit: BoxFit.cover),
      )
    ],
    accountName: Text('Belajar Flutter'),
    accountEmail: Text('hallo@belajarflutter.com'),
  );
}
Widget _drawerItem({IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

import 'package:flutter/material.dart';

class songs extends StatelessWidget {
  final List lagu = [
    "EXO - Monster ",
    "Wayv - Take Off ",
    "NCT2021 - Beautiful ",
    "NCT 127 - Favorite ",
    "NCT DREAM - BOOM ",
    "Enhypen - Fever ",
    "EXO - The Eve ",
    "EXO - Lotto ",
    "TXT - Anti Romantic ",
    "Enhypen - Polaroid Love ",
    "Treasure - Darari ",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(lagu[index],
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  )),
            ),
          );
        },
        itemCount: lagu.length,
      ),
    );
  }
}