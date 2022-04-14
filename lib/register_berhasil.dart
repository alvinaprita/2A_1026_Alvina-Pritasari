import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(
    MaterialApp(
      home: Registerberhasil(),
    ),
  );
}

class Registerberhasil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Container(
            height: 350,
            alignment: Alignment.bottomCenter,
            child: Text(
              'Congratulations you have successfully registered',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
          ),
          FlatButton(
            child: Text(
              'back to login page',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return BelajarForm();
                }),
              );
            },
          ),
        ]),
      ),
    );
  }
}
