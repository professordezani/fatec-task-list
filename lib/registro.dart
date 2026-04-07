import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistroPage extends StatelessWidget {
  TextEditingController txtNome = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtSenha = TextEditingController();

  Future registrar(BuildContext context) async {
    var credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: txtEmail.text,
      password: txtSenha.text,
    );

    await credential.user?.updateDisplayName(txtNome.text);

    txtNome.clear();
    txtEmail.clear();
    txtSenha.clear();

    Navigator.of(context)
      ..pop()
      ..pushReplacementNamed('/lista');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          spacing: 12,
          mainAxisAlignment: .center,
          children: [
            Container(width: 100, height: 100, child: Placeholder()),
            TextField(
              controller: txtNome,
              // maxLength: 20,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Nome",
                prefixIcon: Icon(Icons.text_fields_outlined),
              ),
            ),
            TextField(
              controller: txtEmail,
              decoration: InputDecoration(
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
              onPressed: () => registrar(context),
              child: Text("Registrar"),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Voltar"),
            ),
          ],
        ),
      ),
    );
  }
}
