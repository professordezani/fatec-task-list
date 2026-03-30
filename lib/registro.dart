import 'package:flutter/material.dart';

class RegistroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          spacing: 12,
          mainAxisAlignment: .center,
          children: [
            Container(
              width: 100,
              height: 100,
              child: Placeholder(
              ),
            ),
            TextField(
              // maxLength: 20,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Nome",
                prefixIcon: Icon(Icons.text_fields_outlined),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "E-mail",
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Senha",
                prefixIcon: Icon(Icons.password_outlined),
                suffixIcon: IconButton(
                  onPressed: () {}, // TODO: Exercício.
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Registrar")),
            TextButton(onPressed: () {}, child: Text("Voltar")),
          ],
        ),
      ),
    );
  }
}
