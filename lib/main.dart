import 'package:flutter/material.dart';
import 'package:myapp/homepage.dart';
import 'package:myapp/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext cvcontext) {
    return MaterialApp(home: Homepage());
  }
}
