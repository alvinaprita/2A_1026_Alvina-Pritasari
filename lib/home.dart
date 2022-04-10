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
              icon: Icons.account_circle,
              text: 'Profile',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profil()),
                );
              }),
          _drawerItem(
              icon: Icons.archive,
              text: 'Portofolio',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Portofolio()),
                );
              }),
          _drawerItem(
              icon: Icons.account_box_outlined,
              text: 'Contact Us',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contact()),
                );
              }),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text(
              "Keterangan",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ),
          _drawerItem(
              icon: Icons.settings,
              text: 'Settings',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Setting()),
                );
              }),
          _drawerItem(
              icon: Icons.photo,
              text: 'Galery',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Galery()),
                );
              }),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(color: Colors.grey[800]),
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage("assets/images/6.jpg"), fit: BoxFit.cover),
    ),
    accountName: Text('ALVINA PRITASARI'),
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

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text("Contact"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Contact", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(filled: true, hintText: "Name", fillColor: Colors.white, border: InputBorder.none),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(filled: true, hintText: "Email", fillColor: Colors.white, border: InputBorder.none),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(filled: true, hintText: "Phone", fillColor: Colors.white, border: InputBorder.none),
                  ),
                  SizedBox(height: 8),
                  MaterialButton(
                    height: 60,
                    minWidth: double.infinity,
                    color: Colors.blue,
                    onPressed: () {},
                    child: Text("TERIMA",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Galery extends StatelessWidget {
  final List<String> foto = [
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/9.jpg"
  ];

  final List<String> sub = [
    'Sweetgirls 1 ',
    'Sweetgirls 2',
    'Sweetgirls 3',
    'Sweetgirls 4',
    'Sweetgirls 5',
    'Sweetgirls 6',
    'Sweetgirls 7'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text("Galery"),
      ),
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 30,
        ),
        itemCount: foto.length,
        itemBuilder: (context, index) {
          return Container(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                foto[index],
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              )),
              subtitle: Text(sub[index], style: TextStyle(color: Colors.black)),
            ),
          );
        },
      ),
    );
  }
}

class Portofolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text("Portofolio"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          new Image.asset(
            'assets/images/2.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'assets/images/3.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'assets/images/4.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'assets/images/5.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'assets/images/7.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'assets/images/8.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'assets/images/9.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'assets/images/10.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          title: Text("Profile"),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
            new Image.asset(
              'assets/images/12.jpg',
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 15)),
            Center(
              child: Text(
                "Nama		: ALVINA PRITASARI\n"
                "NIM		: 362055401026\n"
                "Program Studi	: Teknik Informatika\n"
                "Jenis Kelamin	: Perempuan\n",
                overflow: TextOverflow.clip,
                style: TextStyle(fontSize: 18, color: Colors.black),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ));
  }
}

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text('Settings'),
      ),
      body: Column(children: [
        Center(
          child: Text(
            "SONG FOR ME\n\n,"
            "BILLIONAIRE \n"
            "(I wanna be a billionaire so frickin bad, Buy all of the things I never had,  I wanna be on the cover of Forbes magazine, Smiling next to Oprah and the Queen, every time I close my eyes, I see my name in shining lights yeahh, A different city every night, I swear the world better prepare, For when I'm a billionaire.)\n",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ]),
    );
  }
}
