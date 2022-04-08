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
              icon: Icons.arrow_forward_ios_outlined,
              text: 'Profile',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.assignment_sharp,
              text: 'Portofolio',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(1);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.account_box_rounded,
              text: 'Contact',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(2);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.photo,
              text: 'Galery',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(3);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.settings,
              text: 'Settings',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(2);
                Navigator.pop(context);
              }),

          //_drawerItem(icon: Icons.delete, text: 'Trash', onTap: () => print('Tap Trash menu')),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Labels",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(icon: Icons.bookmark, text: 'Family', onTap: () => print('Tap Family menu')),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(color: Colors.green[100]),
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/images/iconkontak.jpg'), fit: BoxFit.cover),
    ),
    accountName: Text('ABOUT ME'),
    accountEmail: Text('pritasarialvina01@gmail.com'),
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

class profile extends StatelessWidget {
  final List lagu = [
    " Monster ",
    " Take Off ",
    " Beautiful ",
    " Favorite ",
    " BOOM ",
    " Fever ",
    " The Eve ",
    " Lotto ",
    " Anti Romantic ",
    " Polaroid Love ",
    " Darari ",
  ];

  final List<String> studio = [
    'EXO',
    'WayV',
    'NCT 2021 ',
    'NCT 127 ',
    'NCT DREAM',
    'Enhypen',
    'EXO ',
    'EXO ',
    'TXT',
    'Enhypen',
    'Treasure',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: lagu.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(
                Icons.play_arrow,
                color: Colors.black87,
              ),
              title: Text(lagu[index], style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 17)),
              subtitle: Text(studio[index]),
            ),
          );
        },
      ),
    );
  }
}

class portofolio extends StatelessWidget {
  final List<String> Album = [
    'assets/images/antiromantic.jpg',
    'assets/images/boom.jpg',
    'assets/images/darari.jpg',
    'assets/images/dftf.jpg',
    'assets/images/dimensionanswer.jpg',
    'assets/images/favorite.jpg',
    'assets/images/overdose.jpg',
    'assets/images/takeoff.jpg',
  ];

  final List<String> Judul = [
    'THE CHAOS CHAPTER:FREZEE',
    'WE BOOM',
    'THE SECOND STEP:CHAPTER ONE',
    'DONT FIGHT THE FEELING',
    'DIMENSION:ANSWER',
    'FAVORITE',
    'OVERDOSE',
    'TAKEOFF',
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Album.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                Album[index],
                width: 350,
                height: 200,
                fit: BoxFit.cover,
              )),
              subtitle: Text(Judul[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15)),
            ),
          );
        },
      ),
    );
  }
}

class contact extends StatelessWidget {
  final List lagu = [
    " Monster ",
    " Take Off ",
    " Beautiful ",
    " Favorite ",
    " BOOM ",
    " Fever ",
    " The Eve ",
    " Lotto ",
    " Anti Romantic ",
    " Polaroid Love ",
    " Darari ",
    " Glitch Mode ",
    " Dont fight the feeling ",
    " Dive Into You ",
    " Kick Back ",
  ];

  final List<String> studio = [
    'EXO',
    'WayV',
    'NCT 2021 ',
    'NCT 127 ',
    'NCT DREAM',
    'Enhypen',
    'EXO ',
    'EXO ',
    'TXT',
    'Enhypen',
    'Treasure',
    'NCT DREAM',
    'EXO',
    'NCT DREAM',
    'WayV',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: lagu.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(
                Icons.play_arrow,
                color: Colors.black87,
              ),
              title: Text(lagu[index], style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 17)),
              subtitle: Text(studio[index]),
            ),
          );
        },
      ),
    );
  }
}
