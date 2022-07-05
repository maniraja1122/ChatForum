import 'package:chatforum/Screens/ChatBox.dart';
import 'package:chatforum/Screens/ChatGroups.dart';
import 'package:chatforum/util/MyRoutes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";
import 'package:firebase_core/firebase_core.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        MyRoutes.ChatGroups:(context)=>ChatGroups(),
        MyRoutes.ChatBox:(context)=>ChatBox()
      },
    );
  }
}
