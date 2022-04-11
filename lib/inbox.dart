import 'package:flutter/material.dart';

class Inbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inbox"),
        backgroundColor: Colors.grey[850],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {},
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Material(
              elevation: 8,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Today",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                100,
                (int i) {
                  return _listItem(i);
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.red,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _listItem(int i) {
    return ListTile(
      leading: Icon(Icons.account_circle, size: 50),
      title: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "shogo.yamada",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "8:59",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            "Please Subscribe this channel!!!!! Please!!!!!",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("this is gmail app using flutter !!!!!"),
          Icon(Icons.star_border)
        ],
      ),
    );
  }
}
