import 'package:flutter/material.dart';
import 'package:myapp/button_extra.dart';
import 'package:myapp/custom_text_field.dart';
import 'package:myapp/signup.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    //final screenWidth = mediaQueryData.size.width;
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
              CustomTextField(hintText: "Email", obscureText: false),
              SizedBox(height: screenHeight * 0.02),
              CustomTextField(hintText: "Password", obscureText: true),

              SizedBox(height: screenHeight * 0.02),
              BlueLoginButton(buttonText: 'Sign in'),
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
