import 'package:flutter/material.dart';
import 'register_done.dart';

void main() {
  runApp(MaterialApp(
    title: "Belajar Membuat Form ",
    home: Register(),
  ));
}

class Register extends StatefulWidget {
  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("registration page"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              // TextField(),
              TextFormField(
                decoration: new InputDecoration(
                  hintText: "example: sehun",
                  labelText: "full name",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                ),
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Name cannot be empty';
                  }
                  return null;
                },
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "Email",
                  icon: Icon(Icons.email),
                  border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                ),
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Email cannot be empty';
                  }
                  return null;
                },
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "Enter Password",
                  icon: Icon(Icons.lock),
                  border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                ),
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Password cannot be empty';
                  }
                  return null;
                },
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              RaisedButton(
                child: Text(
                  "NEXT",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
                onPressed: () {
                  if (_formKey.currentState.validate())
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return RegisterSuccessfull();
                      }),
                    );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
