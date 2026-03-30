import 'package:flutter/material.dart';

class NovoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Task")
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          spacing: 12,
          mainAxisAlignment: .start,
          children: [
            TextField(
              minLines: 1,
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: ()  => Navigator.pop(context),
              child: Text("Salvar")
            ),
          ],
        ),
      ),
    );
  }
}
