import 'package:app_teste/components/teste.dart';
import 'package:app_teste/data/teste_inherited.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Formulario extends StatelessWidget {
  Formulario({super.key});

  var titulo = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        key: _formKey,
        appBar: AppBar(
          title: Text("Criar"),
        ),
        body: Center(
          child: Column(
            children: [
              TextFormField(
                controller: titulo,
              ), ElevatedButton(onPressed: () {
                TesteInherited.of(context).adicionaTeste(Teste(titulo: titulo.text));
                Navigator.of(context).pop();
              }, child: Text("Adicionar"))
            ],
          ),
        ),
      ),
    );
  }
}
