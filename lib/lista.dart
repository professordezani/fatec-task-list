import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'task_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ListaPage extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  final _db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasks de ${_auth.currentUser?.displayName}"),
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
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: _db.collection('tasks').snapshots(),
        builder: (context, s) {
          if (!s.hasData) return CircularProgressIndicator();

          if (s.hasError) return Text(s.error.toString());

          final docs = s.data!.docs;

          return ListView(
            children: [
              for (var t in docs)
                Dismissible(
                  key: Key(t.id),
                  onDismissed: (_) {
                    t.reference.delete();
                  },
                  background: Container(color: Colors.red),
                  // secondaryBackground: Container(color: Colors.blue),
                  child: CheckboxListTile(
                    value: t['checked'],
                    onChanged: (value) {
                      t.reference.update({"checked": value});
                    },
                    title: Text(t['title']),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
