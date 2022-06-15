import 'package:flutter/material.dart';

class PrimerPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("Primer Pantalla"),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "contador");
            },
            child: Icon(Icons.arrow_forward, color: Colors.black)),
      ],
    ));
  }
}
