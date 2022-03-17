import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int quetionIndex;
  final Function answerQuestion;

  Quiz({required this.answerQuestion,required this.quetionIndex,required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Question(
          questions[quetionIndex]['queText'] as String,
          // style: const TextStyle(
          //     color: Colors.red,
          //     fontSize: 20,
          //     fontWeight: FontWeight.bold)
        ),

        ...(questions[quetionIndex]['ansText']
                as List<Map<String,Object>>) //transformation every answer to answer widget

            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text'] as String);
        }).toList()

        // Answer(_ansQue),
        // Answer(_ansQue),
        // Answer(_ansQue),
        // Answer(_ansQue),
      ],
    );
  }
}
