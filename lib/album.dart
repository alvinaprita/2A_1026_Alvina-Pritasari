import 'package:flutter/material.dart';

class album extends StatelessWidget {
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
