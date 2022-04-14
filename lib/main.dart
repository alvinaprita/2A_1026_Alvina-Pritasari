import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'belajar form',
    home: BelajarForm(),
  ));
}

class BelajarForm extends StatefulWidget {
  const BelajarForm({Key? key}) : super(key: key);

  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajat Form'),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(hintText: "contoh: 081xxxxxxxxx", labelText: "Nomor Telp", icon: Icon(Icons.phone), border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'No Telp kosong';
                  }
                  return null;
                },
              ),
              RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    if (_formkey.currentState.validate()) {}
                  })
            ],
          ),
        ),
      ),
    );
  }
}
