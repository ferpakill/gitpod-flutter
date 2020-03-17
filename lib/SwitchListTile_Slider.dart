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
                  campoTexto("Estabelecimento",
                      dica: "Nome do Estabelecimento",
                      icone: Icons.accessibility_new),
                  campoTexto("Endereço",
                      dica: "Digite o Emdereço",
                      icone: Icons.accessibility_new),
                  campoTexto("e-mail",
                      dica: "Digite o e-mail", icone: Icons.accessibility_new),
                  escolha(),
                  tabela(),
                  // Adicionar os elementos
                ],
              ), // Column
            ), // Padding
          ), // Card
        ), // Container
      ), // Scaffold
    );
  }

  Widget campoTexto(String nome, {String dica, IconData icone}) {
    return TextField(
      style: TextStyle(fontSize: 16),
      decoration: InputDecoration(
          icon: icone == null ? null : Icon(icone),
          hintText: dica,
          labelText: nome),
    );
  }

  Widget escolha({bool valor = false, IconData icone}) {
    return SwitchListTile(
      title: Text(
        "ola",
        style: TextStyle(fontSize: 16),
      ),
      value: valor,
      onChanged: (bool value) {
        print("onChanged");
      },
      secondary: icone == null ? null : Icon(Icons.accessibility_new),
    );
  }

  Widget tabela({String texto = "padrao", String texto2 = "ola"}) {
    return Row(
      children: <Widget>[
        Text(
          texto,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black54,
          ),
        ),
        Slider(
          value: 1.toDouble(),
          min: 1.0,
          max: 10.0,
          activeColor: Colors.blue,
          inactiveColor: Colors.black26,
          label: texto2,
          onChanged: (double newValue) {},
        ), // Slider
      ],
    );
  }
}