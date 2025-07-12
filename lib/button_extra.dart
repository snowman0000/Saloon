import 'package:flutter/material.dart';

class CustomBottomPrompt extends StatelessWidget {
  final String promptText;
  final String buttonText;
  final Widget navigateTo; // Widget to navigate to on tap

  const CustomBottomPrompt({
    super.key,
    required this.promptText,
    required this.buttonText,
    required this.navigateTo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          promptText,
          style: const TextStyle(color: Color.fromARGB(255, 174, 170, 170)),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigateTo),
            );
          },
          child: Text(
            buttonText,
            style: const TextStyle(color: Color.fromARGB(255, 53, 115, 238)),
          ),
        ),
      ],
    );
  }
}

class BlueLoginButton extends StatelessWidget {
  final String buttonText;
  final Widget? navigateTo;
  const BlueLoginButton({
    super.key,
    required this.buttonText,
    this.navigateTo,
    required Future<Null> Function() onPressed,
  });
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;
    return ElevatedButton(
      onPressed: () {
        // Add navigation logic here and also pass the widget in SignIn
        // if (navigateTo != null) {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(builder: (context) => navigateTo!),
        //   );
        // }
        
      },
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        fixedSize: WidgetStatePropertyAll(
          Size(screenWidth * 0.85, screenHeight * 0.09),
        ),
        backgroundColor: WidgetStatePropertyAll(
          const Color.fromARGB(255, 53, 115, 238),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
