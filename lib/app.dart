import 'package:flutter/material.dart';
import 'novo.dart';
import 'login.dart';
import 'registro.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: NovoPage());
  }
}
