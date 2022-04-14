import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: LoginSuccessfull(),
    ),
  );
}

class LoginSuccessfull extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: 600,
            child: Text(
              'Congratulations you have successfully logged in',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
            )),
      ),
    );
  }
}
