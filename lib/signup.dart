import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/button_extra.dart';
import 'package:myapp/custom_text_field.dart';
import 'package:myapp/signin.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  Future<void> createUserWithPassword() async {
    try {
      final userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text.trim(),
          );

      print(userCredential.user?.uid);
      print(userCredential);
    } on FirebaseAuthException catch (e) {
      debugPrint(e.message);
    }
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const Text(
                  "Create Account",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Join our community",
                  style: TextStyle(
                    color: Color.fromARGB(255, 174, 170, 170),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextField(hintText: "Full Name", obscureText: false),
                const SizedBox(height: 10),
                CustomTextField(
                  hintText: "Email",
                  obscureText: false,
                  controller: emailController,
                ),
                const SizedBox(height: 10),
                CustomTextField(hintText: "Phone Number", obscureText: false),
                const SizedBox(height: 10),
                CustomTextField(
                  hintText: "Password",
                  obscureText: true,
                  controller: passwordController,
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  hintText: "Re Type Password",
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                BlueLoginButton(
                  buttonText: "Sign up",
                  onPressed: () async {
                    await createUserWithPassword();
                  },
                ),
                const SizedBox(height: 20),
                CustomBottomPrompt(
                  promptText: "Already have an account?",
                  buttonText: "Sign in",
                  navigateTo: Signin(),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
