import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BuscaTodos extends StatefulWidget {
  const BuscaTodos({Key? key}) : super(key: key);

  @override
  _BuscaTodosState createState() => _BuscaTodosState();
}

class _BuscaTodosState extends State<BuscaTodos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Busca todos"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: const <Widget>[
            Text("tela de busca todos funcionando!")
          ],
        ),
      ),
    );
  }
}