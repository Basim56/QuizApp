import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_appv6/questions_summary/questions_identifier.dart';

class SummaryItem extends StatelessWidget {
  SummaryItem({required this.itemData, super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectQuestion =
        itemData['chosen_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            isCorrectQuestion: isCorrectQuestion,
            questionIndex: itemData['question_index'] as int),
        const SizedBox(width: 30),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                itemData['correct_answer'] as String,
                style: const TextStyle(color: Color.fromARGB(255, 10, 241, 87)),
              ),
              Text(
                itemData['chosen_answer'] as String,
                style:
                    const TextStyle(color: Color.fromARGB(255, 242, 125, 131)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
