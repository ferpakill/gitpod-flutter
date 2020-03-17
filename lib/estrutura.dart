import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  textRed(p1: "ola"),
                  textBlue(p1: "tudo"),
                  textYellow(p1: "bem"),
                  textRedFont("oal", tamanho: 80),
                  textColorFont("oal", cor: Colors.green, tamanho: 80),
                  campoTexto("Estabelecimento","Digite nome", Icons.android),
                  campoTextoOp("Estabelecimento", icone: Icons.airline_seat_flat),
                  // Adicionar os elementos
                ],
              ), // Column
            ), // Padding
          ), // Card
        ), // Container
      ), // Scaffold
    );
  }

  Widget textRed({String p1}) {
    return Text(p1,
        style: TextStyle(
          color: Colors.redAccent,
          fontSize: 40,
        ));
  }

  Widget textBlue({String p1}) {
    return Text(p1,
        style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 40,
        ));
  }

  Widget textYellow({String p1}) {
    return Text(p1,
        style: TextStyle(
          color: Colors.yellowAccent,
          fontSize: 40,
        ));
  }

  Widget textRedFont(String p1, {double tamanho = 40}) {
    return Text(p1,
        style: TextStyle(
          color: Colors.redAccent,
          fontSize: tamanho,
        ));
  }

  Widget textColorFont(String p1, {cor = Colors.red, double tamanho = 40}) {
    return Text(p1,
        style: TextStyle(
          color: cor,
          fontSize: tamanho,
        ));
  }

  Widget campoTexto(String nome, String dica, IconData icone) {
    return TextField(
      style: TextStyle(fontSize: 16),
      decoration: InputDecoration(
        icon: icone == null ? null : Icon( icone ),
        hintText: dica, labelText: nome),
      
    );
  }
  
  Widget campoTextoOp(String nome, {String dica, IconData icone}) {
    return TextField(
      style: TextStyle(fontSize: 16),
      decoration: InputDecoration(
        icon: icone == null ? null : Icon( icone ),
        hintText: dica,
        labelText: nome),
      
    );
  }
}