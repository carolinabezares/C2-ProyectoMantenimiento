import 'package:flutter/material.dart';
import 'package:proyectoc2/src/page/primerpantalla.dart';
import 'package:proyectoc2/src/page/contador.dart';

void main(List<String> args) {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      "contador": (BuildContext context) =>
          Contador(), //la / es para definir la pantalla principal o bien la ruta inicial
      "/": (BuildContext context) => PrimerPantalla()
    });
  }
}
