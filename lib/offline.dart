import 'package:flutter/material.dart';

class offline extends StatelessWidget {
  final List lagu = [
    "EXO - Monster ",
    "EXO - Overdose ",
    "EXO - Obsession ",
    "Wayv - Take Off ",
    "NCT2021 - Beautiful ",
    "NCT 127 - Favorite ",
    "NCT 127 - Stiker ",
    "NCT - Lemonade ",
    "NCT DREAM - BOOM ",
    "Enhypen - Fever ",
    "EXO - The Eve ",
    "EXO - Lotto ",
    "TXT - Anti Romantic ",
    "Enhypen - Polaroid Love ",
    "Treasure - Darari ",
    "Treasure - Jikjin ",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(lagu[index],
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  )),
            ),
          );
        },
        itemCount: lagu.length,
      ),
    );
  }
}
