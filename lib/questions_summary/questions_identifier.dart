import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {required this.questionIndex,
      required this.isCorrectQuestion,
      super.key});

  final int questionIndex;
  final bool isCorrectQuestion;
  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isCorrectQuestion
              ? const Color.fromARGB(255, 10, 241, 87)
              : const Color.fromARGB(255, 242, 39, 228),
          borderRadius: BorderRadius.circular(100)),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
