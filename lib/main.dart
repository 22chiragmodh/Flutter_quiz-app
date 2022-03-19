import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const[
    //const is compile variable and final is runtime

    {
      'queText': '1.What is Flutter?',
      'ansText': [
        {'text': 'SDK', 'score': 1},
        {'text': 'Language', 'score': 0},
        {'text': 'Platform', 'score': 0},
        {'text': 'library', 'score': 0},
      ],
    },
    {
      'queText': '2.What is Dart?',
      'ansText': [
        {'text': 'SDK', 'score': 0},
        {'text': 'Language', 'score': 1},
        {'text': 'Platform', 'score': 0},
        {'text': 'library', 'score': 0},
      ],
    },
    {
      'queText': '3.const is which type of variable?',
      'ansText': [
        {'text': 'runtime', 'score': 0},
        {'text': 'compiletime', 'score': 1},
        {'text': 'static', 'score': 0},
        {'text': 'none', 'score': 0},
      ],
    },
    {
      'queText': '4.final is which type of variable?',
      'ansText': [
        {'text': 'compiletime', 'score': 0},
        {'text': 'static', 'score': 0},
        {'text': 'runtime', 'score': 1},
        {'text': 'none', 'score': 0},
      ],
    },
    {
      'queText': '5. Flutter is developed by ________',
      'ansText': [
        {'text': 'Facebook', 'score': 0},
        {'text': 'Samsung', 'score': 0},
        {'text': 'IBM', 'score': 0},
        {'text': 'Google', 'score': 1},
      ],
    },
    {
      'queText': '6.SDK stands for _________',
      'ansText': [
        {'text': 'Software Development Knowledge', 'score': 0},
        {'text': 'Software Data Kit', 'score': 0},
        {'text': 'Software Development Kit', 'score': 1},
        {'text': 'Software Database Kit', 'score': 0}
      ],
    },
    {
      'queText': '7.How many types of widgets are there in Flutter?',
      'ansText': [
        {'text': 'Facebook', 'score': 0},
        {'text': 'two', 'score': 1},
        {'text': 'Three', 'score': 0},
        {'text': 'Four', 'score': 0},
      ],
    },
    {
      'queText': '8.Are stateless widgets mutable or immutable?',
      'ansText': [
        {'text': 'mutable', 'score': 0},
        {'text': 'immutable', 'score': 1},
        {'text': 'none', 'score': 0}
      ],
    },
  ];

  // ignore: non_constant_identifier_names
  var _questionIndex = 0;
  var _totalscore = 0;

  void _resetquiz()
  {
    
        setState(() {
           _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalscore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length) {
      print("we have more questions!");
    } else {
      print("no more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text('Dart-Flutter Quiz',style: TextStyle(color: Colors.yellowAccent),))),
        body:
        
        _questionIndex < _questions.length
            ? Quiz(
                 answerQuestion:_answerQuestion,
                quetionIndex: _questionIndex,
                 questions: _questions,
              )
            : Result(_totalscore,_resetquiz),
      ),
    );
  }
}
