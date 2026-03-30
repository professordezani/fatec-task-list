import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          spacing: 12,
          mainAxisAlignment: .center,
          children: [
            TextField(
              decoration: InputDecoration(
                // filled: true,
                // fillColor: Colors.blue[50]
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
            ElevatedButton(
              onPressed: () => Navigator
                .pushReplacementNamed(context, "/lista"),
              child: Text("Entrar")
            ),
            TextButton(
              onPressed: () => Navigator
                .pushNamed(context, "/registro"),
              child: Text("Registrar")
            ),
          ],
        ),
      ),
    );
  }
}
