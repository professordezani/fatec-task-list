import 'package:flutter/material.dart';
import 'task_model.dart';

class ListaPage extends StatelessWidget {
  final tasks = [
    TaskModel(id: '1', title: 'Task 1', checked: true),
    TaskModel(id: '2', title: 'Task 2'),
    TaskModel(id: '3', title: 'Task 3', checked: true)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasks"),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushReplacementNamed(context, "/login"),
            icon: Icon(Icons.logout_outlined),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "/novo"),
        child: Icon(Icons.add),
      ),
      body: ListView(
        children: [
          for(var t in tasks)
            Dismissible(
              key: Key(t.id),
              onDismissed: (_) {},
              background: Container(color: Colors.red),
              // secondaryBackground: Container(color: Colors.blue),
              child: CheckboxListTile(
                value: t.checked,
                onChanged: (value) {},
                title: Text(t.title),
              ),
            ),
        ],
      ),
    );
  }
}
