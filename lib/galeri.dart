import 'package:flutter/material.dart';

class Galery extends StatelessWidget {
  final List<String> foto = [
    'asset/image/antiromantic.jpg',
    'asset/image/boom.jpg',
    'asset/image/darari.jpg',
    'asset/image/dftf.jpg',
    'asset/image/dimensionanswer.jpg',
    'asset/image/favorite.jpg',
    'asset/image/nct.jpg',
    'asset/image/nct127.jpg',
  ];

  final List<String> sub = [
    'BUNGA 1',
    'BUNGA 2',
    'BUNGA 3',
    'BUNGA 4',
    'BUNGA 5',
    'BUNGA 6',
    'BUNGA 7',
    'BUNGA 8',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
