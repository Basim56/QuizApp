import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  StartScreen(this.switchScreen, {super.key});
  void Function() switchScreen;
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/logo34.png',
            height: 200,
            // color: const Color.fromARGB(93, 255, 255, 255),
          ),
          const SizedBox(height: 30),
          const Text(
            'Learn Flutter the fun way',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: switchScreen,
            icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
            label: const Text(
              "Start Quiz",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
