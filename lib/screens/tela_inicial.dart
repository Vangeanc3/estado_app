import 'package:app_teste/data/teste_inherited.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste"),
      ),
      body: ListView(
        children: TesteInherited.of(context).testes,
      ),floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).pushNamed("/form");
      }),
    );
  }
}
