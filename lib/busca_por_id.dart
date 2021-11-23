import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BuscaPorId extends StatefulWidget {
  const BuscaPorId({Key? key}) : super(key: key);

  @override
  _BuscaPorIdState createState() => _BuscaPorIdState();
}

class _BuscaPorIdState extends State<BuscaPorId> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Busca por id"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: const <Widget>[
            Text("tela de busca por id funcionando!")
          ],
        ),
      ),
    );
  }
}

