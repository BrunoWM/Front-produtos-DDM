import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Atualizar extends StatefulWidget {
  const Atualizar({Key? key}) : super(key: key);

  @override
  _AtualizarState createState() => _AtualizarState();
}

class _AtualizarState extends State<Atualizar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Atualizar produto"),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: const <Widget>[
            Text("tela de atualização funcionando")
          ],
        ),
      ),
    );
  }
}

