import 'package:flutter/material.dart';
import 'package:myapp/button_extra.dart';
import 'package:myapp/custom_text_field.dart';
import 'package:myapp/signin.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // 🔁 allows scrolling
          child: Padding(
            // ⬅️ gives padding to entire column
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
                CustomTextField(hintText: "Email", obscureText: false),
                const SizedBox(height: 10),
                CustomTextField(hintText: "Phone Number", obscureText: false),
                const SizedBox(height: 10),
                CustomTextField(hintText: "Password", obscureText: true),
                const SizedBox(height: 10),
                CustomTextField(
                  hintText: "Re Type Password",
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                const BlueLoginButton(buttonText: "Sign up"),
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
