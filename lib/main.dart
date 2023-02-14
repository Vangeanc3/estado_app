import 'package:app_teste/data/teste_inherited.dart';
import 'package:app_teste/screens/tela_inicial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: "/home",
      routes: {
        "/home":(context) => const TelaInicial(),
        "/form":(context) => const TelaInicial()
      },
    );
  }
}
