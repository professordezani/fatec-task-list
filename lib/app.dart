import 'package:flutter/material.dart';
import 'novo.dart';
import 'login.dart';
import 'registro.dart';
import 'lista.dart';

class App extends StatelessWidget {
  const App({super.key});

  // final autenticado = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: {
        "/login": (context) => LoginPage(),
        "/registro": (context) => RegistroPage(),
        "/novo": (context) => NovoPage(),
        "/lista": (context) => ListaPage(),
      },
      initialRoute: "/login",
      // initialRoute: autenticado ? "/novo" : "/login",
    );
  }
}
