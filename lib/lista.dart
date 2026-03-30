import 'package:flutter/material.dart';

class ListaPage extends StatelessWidget {
  const ListaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasks"),
        actions: [
          IconButton(
            onPressed: () => Navigator
              .pushReplacementNamed(context, "/login"),
            icon: Icon(Icons.logout_outlined),
          ),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator
                .pushNamed(context, "/novo"),
        child: Icon(Icons.add),
      ),
    );
  }
}
