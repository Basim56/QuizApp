import 'package:flutter/material.dart';
import 'package:second_appv6/data/questions.dart';
import 'package:second_appv6/questions_screens.dart';
import 'package:second_appv6/start_screen.dart';
import 'package:second_appv6/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  List<Color> colors1 = const [
    Color.fromARGB(255, 129, 9, 242),
    Color.fromARGB(185, 129, 9, 242),
  ];
  List<String> selectedAnswer = [];
  String activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen != 'start-screen') {
      screenWidget = QuestionScreen(selectedAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswer,
        restartQuiz: restartQuiz,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: colors1,
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft),
            ),
            child: screenWidget),
      ),
    );
  }
}
