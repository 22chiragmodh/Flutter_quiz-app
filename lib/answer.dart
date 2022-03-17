import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
 
  Answer(this.selectHandler,this. answerText);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      //width: double.infinity,
       margin: const EdgeInsets.only(top: 12.0),
      child: ElevatedButton.icon(
        onPressed: selectHandler,
        icon: const Icon(Icons.play_arrow),
       label: Text(answerText,
            style:const TextStyle(color: Colors.white, fontSize: 18)),
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          fixedSize: const Size(200, 60),
           
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      
    );
  }
}
