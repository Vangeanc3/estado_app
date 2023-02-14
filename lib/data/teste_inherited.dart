import 'package:app_teste/components/teste.dart';
import 'package:flutter/material.dart';

class TesteInherited extends InheritedWidget {
  TesteInherited({Key? key, required Widget child})
      : super(key: key, child: child);

  List<Teste> testes = [];

  void adicionaTeste(Teste teste) async {
    print("criando um novo teste");
    testes.add(teste);
  }

  @override
  bool updateShouldNotify(TesteInherited oldWidget) {
    return false;
  }

  static TesteInherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TesteInherited>()!;
  }
}
