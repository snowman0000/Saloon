import 'package:flutter/material.dart';
import 'package:myapp/button_extra.dart';
import 'package:myapp/custom_text_field.dart';
import 'package:myapp/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
 

  Future<void> signInWithPassword() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
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
     final mediaQueryData = MediaQuery.of(context);
    final screenHeight = mediaQueryData.size.height;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Welcome Back",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: screenHeight * 0.01),
              const Text(
                "Sign in to your account",
                style: TextStyle(
                  color: Color.fromARGB(255, 174, 170, 170),
                  fontSize: 14,
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
              CustomTextField(
                hintText: "Email",
                obscureText: false,
                controller: emailController,
              ),
              SizedBox(height: screenHeight * 0.02),
              CustomTextField(
                hintText: "Password",
                obscureText: true,
                controller: passwordController,
              ),
              SizedBox(height: screenHeight * 0.02),
              BlueLoginButton(
                buttonText: "Sign in",
                onPressed: () {
                  return Future.value();
                },
              ),
              CustomBottomPrompt(
                promptText: "Dont Have an account?",
                buttonText: "Sign up",
                navigateTo: Signup(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
