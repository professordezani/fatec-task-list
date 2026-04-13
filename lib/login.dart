import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtSenha = TextEditingController();

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
              controller: txtEmail,
              decoration: InputDecoration(
                // filled: true,
                // fillColor: Colors.blue[50]
                border: OutlineInputBorder(),
                labelText: "E-mail",
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            TextField(
              controller: txtSenha,
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
              onPressed: () async {
                try {
                  await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: txtEmail.text,
                    password: txtSenha.text,
                  );
                  Navigator.pushReplacementNamed(context, "/lista");
                } on FirebaseAuthException catch (ex) {
                  final snackBar = SnackBar(
                    content: Text(ex.message!),
                    backgroundColor: Colors.red,
                    behavior: SnackBarBehavior.floating,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: Text("Entrar"),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, "/registro"),
              child: Text("Registrar"),
            ),
          ],
        ),
      ),
    );
  }
}
