import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Excliur extends StatefulWidget {
  const Excliur({Key? key}) : super(key: key);

  @override
  _ExcliurState createState() => _ExcliurState();
}

class _ExcliurState extends State<Excliur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Excluir produto"),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: const <Widget>[
            Text("tela de exclusão funcionando!")
          ],
        ),
      ),
    );
  }
}