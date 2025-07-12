import 'package:flutter/material.dart';
import 'package:myapp/homepage.dart';
import 'package:myapp/signin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myapp/signup.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override 
  Widget build(BuildContext cvcontext) {
    return MaterialApp(home: Signup());
  }
}
