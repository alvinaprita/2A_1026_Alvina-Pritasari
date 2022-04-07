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
                Navigator.pushNamed(context, '/portofolio');
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
      appBar: AppBar(backgroundColor: Colors.grey, title: Text("ABOUT NCT")),
      body: Center(
        child: Container(
          width: 600,
          child: Text(
            ' NCT merupakan boy grup besutan SM Entertainment. Nama mereka memiliki kepanjangan Neo Culture Technology. Sebuah istilkah yang diciptakan oleh pendiri SM Entertainment, Lee Soo Man. NCT berkonsep boy grup dengan jumlah member yang tak terhingga. Mereka pun terbagi ke dalam beberapa sub-unit yang tidak hanya beraktivitas di Korea Selatan saja. Melalui program pelatihan buatan SM Entertainment, SM Roookeis, NCT dipersiapkan sejak tahun 2013. Perekrutan member NCT dilakukan lewat beragam cara, mulai dari perekrutan jalanan, rekomendasi pribadi hingga lewat program SM Global Audition..',
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ),
    );
  }
}

class Portofolio extends StatelessWidget {
  final List<String> Grup = [
    'assets/images/nct.jpg',
    'assets/images/nct127.jpg',
    'assets/images/nctdream.jpg',
    'assets/images/wayv.jpg',
  ];

  final List<String> Judul = [
    'NCT',
    'NCT 127',
    'NCT DREAM',
    'WayV',
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Grup.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                Grup[index],
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
              subtitle: Text(studio[index]),
            ),
          );
        },
      ),
    );
  }
}
