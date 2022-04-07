import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              child: Text('Tap Untuk ke AboutPage'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/halaman-404');
              },
              child: Text('Tap Halaman lain'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: Text('Tap Portofolio'),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Kembali'),
        ),
      ),
    );
  }
}

class Portofolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prtofolio saya'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Klik Disini'),
        ),
      ),
    );
  }
}
