import 'package:crud_produtos/atualizacao.dart';
import 'package:crud_produtos/busca_por_id.dart';
import 'package:crud_produtos/busca_todos.dart';
import 'package:crud_produtos/exclusao.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:crud_produtos/cadastro.dart';

class Inicial extends StatefulWidget {
  const Inicial({Key? key}) : super(key: key);

  @override
  _InicialState createState() => _InicialState();
}

class _InicialState extends State<Inicial> {
  _cadastrar(
      
      ) async {}
  _deletar() async {}
  _atualizar() async {}
  _buscarTodos() async {}
  _buscarPorId() async {}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CRUD Produtos"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Cadastrar())
              );
            }, child: const Text("ADICIONAR")),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Excliur())
              );
            }, child: const Text("DELETAR")),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Atualizar())
              );
            }, child: const Text("ATUALIZAR")),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const BuscaTodos())
              );
            }, child: const Text("BUCAR TODOS")),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const BuscaPorId())
              );
            }, child: const Text("BUSCAR POR ID")),
          ],
        ),
      ),
    );
  }
}
