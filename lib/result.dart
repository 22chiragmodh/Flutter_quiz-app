import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final resultscore;
  final VoidCallback resetquizHandler;

  String get resultPhrase {
    String resulttext;

    if (resultscore == 8) {
      resulttext = 'You are Awesome! ';
    } else if (resultscore >= 4 && resultscore < 8) {
      resulttext = 'You are Good effort!';
    } else {
      resulttext = 'bad marks Try Again!';
    }

    return resulttext;
  }

  Result(this.resultscore,this.resetquizHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
                color: Colors.lightGreen, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          FlatButton(onPressed:resetquizHandler, child: const Text('Restart Quiz',style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),),
        ],
      ),
    );
  }
}
