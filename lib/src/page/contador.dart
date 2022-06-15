import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  @override
  int numero = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widget con estado")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(children: [
            Text(numero.toString()),
            TextButton(
                onPressed: () {
                  numero += 1;
                  setState(() {});
                },
                child: Icon(Icons.add)),
          ], mainAxisAlignment: MainAxisAlignment.center),
        ],
      ),
    );
  }
}
