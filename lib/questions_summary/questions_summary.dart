import 'package:flutter/material.dart';
import 'package:second_appv6/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.getSummaryData, {super.key});

  final List<Map<String, Object>> getSummaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
          child: Column(
        children: getSummaryData.map((data) {
          return SummaryItem(itemData: data);
        }).toList(),
      )),
    );
  }
}
