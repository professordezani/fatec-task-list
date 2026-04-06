import 'package:flutter/material.dart';
import 'app.dart';
import 'package:firebase_core/firebase_core.dart';

const firebaseConfig = FirebaseOptions(
  apiKey: "AIzaSyDQq2i8qsj54OkV6kBxDq_hZ5q3fIYMV1s",
  authDomain: "tasklist-1111f.firebaseapp.com",
  projectId: "tasklist-1111f",
  storageBucket: "tasklist-1111f.firebasestorage.app",
  messagingSenderId: "642372243367",
  appId: "1:642372243367:web:f3705d9f69ddf009567082",
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseConfig);
  runApp(const App());
}
