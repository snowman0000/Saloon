import 'package:flutter/material.dart';

class CustomBottomPrompt extends StatefulWidget {
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
  State<CustomBottomPrompt> createState() => _CustomBottomPromptState();
}

class _CustomBottomPromptState extends State<CustomBottomPrompt> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.promptText,
          style: const TextStyle(color: Color.fromARGB(255, 174, 170, 170)),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => widget.navigateTo),
            );
          },
          child: Text(
            widget.buttonText,
            style: const TextStyle(color: Color.fromARGB(255, 53, 115, 238)),
          ),
        ),
      ],
    );
  }
}

class BlueLoginButton extends StatefulWidget {
  final String buttonText;
  final VoidCallback onPressed; // <- this was missing

  const BlueLoginButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  State<BlueLoginButton> createState() => _BlueLoginButtonState();
}

class _BlueLoginButtonState extends State<BlueLoginButton> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;
    return ElevatedButton(
      onPressed: widget.onPressed, // <- Now calling the correct function
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
        widget.buttonText,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
