import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;

class Cadastrar extends StatefulWidget {
  const Cadastrar({Key? key}) : super(key: key);

  @override
  _CadastrarState createState() => _CadastrarState();
}

class _CadastrarState extends State<Cadastrar> {

  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerDescricao = TextEditingController();

  _cadastrarBTN() async {
    String nomeDigitado = _controllerNome.text;
    String descricaoDigitada = _controllerDescricao.text;
    
    var url = Uri.parse('https://localhost:44359/api/v1/produtos');
    var corpo = jsonEncode({"id": 0, "name": nomeDigitado, "description": descricaoDigitada});
    var response = await http.post(
        url,
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
        body: corpo
    );
    print("Status code: ${response.statusCode}");
    print("Response body: ${response.body}");

    _controllerNome.clear();
    _controllerDescricao.clear();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro produto"),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            const Text("tela de cadastro funcionando!"),
            TextField(
              decoration: const InputDecoration(
                labelText: "nome do produto"
              ),
              controller: _controllerNome,
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: "Descrição"
              ),
              controller: _controllerDescricao,
            ),
            ElevatedButton(
                onPressed: _cadastrarBTN,
                child: const Text("Cadastrar")
            )
          ],
        ),
      ),
    );
  }
}
