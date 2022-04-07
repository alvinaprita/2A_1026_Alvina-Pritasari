import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Belajar Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: Text('About'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/porto');
              },
              child: Text('Portofolio'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Contact');
              },
              child: Text('Contact'),
            ),
          ],
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('About'),
        ),
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Image.asset(
              'assetS/imageS/nctlogo.jpg',
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 12, 0, 12)),
            new Text(
              " NCT merupakan boy grup besutan SM Entertainment. Nama mereka memiliki kepanjangan Neo Culture Technology. NCT berkonsep boy grup dengan jumlah member yang tak terhingga.",
              maxLines: 4,
              overflow: TextOverflow.clip,
              style: TextStyle(fontSize: 15, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}

class Portofolio extends StatelessWidget {
  final List<String> gambar = [
    "assets/images/nct.jpg",
    "assets/images/nct127.jpg",
    "assets/images/nctdream.jpg",
    "assets/images/wayv.jpg"
  ];

  final List<String> sub = [
    'NCT',
    'NCT 127',
    'NCT DREAM',
    'WayV'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Portofolio NCT'),
      ),
      body: ListView.builder(
        itemCount: gambar.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                gambar[index],
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              )),
              subtitle: Text(sub[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15)),
            ),
          );
        },
      ),
    );
  }
}

class Contact extends StatelessWidget {
  final List kontak = [
    " Lee Taeyong ",
    " Moon Taeil ",
    " Johnny Suh ",
    " Nakamoto Yuta ",
    " Qian Kun ",
    " Kim Doyoung ",
    " Li Yongqin ",
    " Jung Jaehyun ",
    " Dong SiCheng ",
    " Kim Jungwoo ",
    " Huang xuxi ",
    " Lee Min Hyung",
    " Xiao Dejun ",
    " Huang Guanheng ",
    " Huang Renjun ",
    " Lee Dong hyuck ",
    " Na Jaemin ",
    " Liu YangYang ",
    " Osaki Shoataro ",
    " Jung Sungchan ",
    " Zhong Chen le ",
    " Park Jisung ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey, title: Text('Contact Saya')),
      body: ListView.builder(
        itemCount: kontak.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle_sharp,
                color: Colors.black87,
              ),
              title: Text(kontak[index], style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 17)),
            ),
          );
        },
      ),
    );
  }
}
