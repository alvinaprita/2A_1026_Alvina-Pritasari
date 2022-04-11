import 'package:flutter/material.dart';
import './home.dart';

class Inbox extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final List nama = [
    "Montse Hall",
    "Albert Lives",
    "Imma Mustard",
    "Danny Pej",
    "Jhonathan Bust",
  ];
  final List title = [
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
    "Just Message",
  ];
  final List isi = [
    "Has been a long time ...",
    "That is awesome!! Take a look ...",
    "Can you meet this weekend? ...",
    "There is the new widget libary ...",
    "Whats'up how are you ...",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            title: Text('Inbox'),
            actions: [
              IconButton(
                onPressed: () {
                  _scaffoldKey.currentState.openEndDrawer();
                },
                icon: Icon(Icons.search),
              )
            ],
            // backgroundColor: Colors.greenAccent,
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: Icon(Icons.account_circle, size: 50),
                  title: Column(
                    children: <Widget>[
                      Text('Today'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(nama[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          Text(
                            "2h",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                        Text('' + isi[index]),
                      ]),
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('' + title[index]),
                      Icon(Icons.star_border),
                    ],
                  ),
                ),
              );
            },
            itemCount: nama.length,
          ),
        ));
  }
}
