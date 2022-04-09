import 'package:flutter/material.dart';

class Portofolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portofolio"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          new Image.asset(
            'asset/image/antiromantic.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'asset/image/boom.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'asset/image/darari.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'asset/image/dftf.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'asset/image/dimensionanswer.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'asset/image/favorite.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'asset/image/nct.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            'asset/image/nct127.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
