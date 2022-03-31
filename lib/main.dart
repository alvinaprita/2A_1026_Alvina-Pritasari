import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: cobaListView(),
    );
  }
}

class cobaListView extends StatelessWidget {
  final List<String> gambar = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/5.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
  ];

  final List<String> sub = [
    'Soobin',
    'Yeonjun',
    'Heuningkai',
    'Beomgyu',
    'Taehyun',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("GALERI TXT", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
        ),
        backgroundColor: Colors.green[200],
      ),
      body: ListView.builder(
        itemCount: gambar.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                gambar[index],
                width: 350,
                height: 200,
                fit: BoxFit.cover,
              )),
              subtitle: Text(sub[index], style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15)),
            ),
          );
        },
      ),
    );
  }
}
