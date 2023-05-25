// This imports the necessary Flutter material library.
import 'package:flutter/material.dart';
// These two lines import the quiz.dart and result.dart files from the current directory.

import "./quiz.dart";
import "result.dart";

// This is the main entry point for the application, and it runs the MyApp widget.

void main() => runApp(const MyApp());

// This is the MyApp widget, which extends StatefulWidget. It creates a new _MyAppState
// object when the widget is built.
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// This is the _MyAppState class, which extends State<MyApp>. It contains two instance
// variables, questionIndex and total_score.
class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  // ignore: non_constant_identifier_names
  int total_score = 0;

// This is the build method, which creates the UI for the app. It defines a const list of
// maps called questions, which contains the quiz questions and their respective answers.
  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questiontext': "What's your favourite colors?",
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 7},
          {'text': 'Yellow', 'score': 4},
          {'text': 'White', 'score': 1}
        ],
      },
      {
        'questiontext': "What's your favourite animal?",
        'answers': [
          {'text': 'Lion', 'score': 10},
          {'text': 'Panther', 'score': 7},
          {'text': 'Bull', 'score': 4},
          {'text': 'Dog', 'score': 1}
        ],
      },
      {
        'questiontext': "Who's your favourite food type?",
        'answers': [
          {'text': 'Non-Veg', 'score': 10},
          {'text': 'Egg', 'score': 7},
          {'text': 'Veg', 'score': 4},
          {'text': 'Vegan', 'score': 1}
        ],
      }
    ];

// This is a function called resetQuiz, which resets the quiz by setting questionIndex and
// total_score to 0. It calls the setState method to update the state of the app.
    void resetQuiz() {
      setState(() {
        questionIndex = 0;
        total_score = 0;
      });
    }

// This is a function called answerQuestions, which updates the total_score based on the
// user's selected answer and increments the questionIndex to move to the next question.
// It also checks if there are more questions to display or if the quiz has been completed.
    void answerQuestions(int score) {
      total_score += score;
      setState(() {
        questionIndex = questionIndex + 1;
      });
      if (questionIndex < 2) {
      } else {}
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text("Travel App"),
            backgroundColor: const Color.fromARGB(255, 255, 37, 37)),
        body: questionIndex < questions.length
            ? Quiz(answerQuestions, questionIndex, questions)
            : Result(total_score, resetQuiz),
      ),
    );
  }
}
