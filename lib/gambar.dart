import 'package:flutter/material.dart';

class gambar extends StatelessWidget {
  final List<String> foto = [
    'asset/image/nctdream.jpg',
    'asset/image/overdose.jpg',
    'asset/image/red.jpg',
    'asset/image/resoo.jpg',
    'asset/image/takeoff.jpg',
    'asset/image/wayv.jpg',
  ];

  final List<String> sub = [
    'KPOP',
    'KPOP',
    'KPOP',
    'KPOP',
    'KPOP',
    'KPOP',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("GALERI", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30)),
        ),
        backgroundColor: Colors.blue[200],
      ),
      body: ListView.builder(
        itemCount: foto.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                foto[index],
                width: 350,
                height: 200,
                fit: BoxFit.cover,
              )),
              subtitle: Text(sub[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          );
        },
      ),
    );
  }
}
