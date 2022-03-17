// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Question extends StatelessWidget {
  final String questionText;

  // ignore: use_key_in_widget_constructors
  const Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      width: double.infinity,   //full width of cont
      child: Text(
        questionText,style:const TextStyle(
        fontSize:30,color:Colors.lightBlue
      ),
      textAlign: TextAlign.center,),
    );
  }
}
