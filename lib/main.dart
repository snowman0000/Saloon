import 'package:flutter/material.dart';
import 'package:myapp/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext cvcontext) {
<<<<<<< HEAD
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("helooooo ")));
=======
    return MaterialApp(home: Signin());
>>>>>>> origin/prithviraj
  }
}
