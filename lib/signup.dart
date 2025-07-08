import 'package:flutter/material.dart';

class TxtField {
  final String hintText;
  final bool pass;
  const TxtField({
    required this.hintText,
    required this.pass,
  });
}

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [Text("Create Account"), Text("Join our community")],
          ),
        ),
      ),
    );
  }
}
