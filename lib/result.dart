// This code defines a stateless widget called Result. It is used to display the result of
// the quiz taken in the app.
// Importing the material library from the Flutter framework.
import 'package:flutter/material.dart';

// Declaring a new stateless widget called Result.
class Result extends StatelessWidget {
  // Declaring two instance variables, resultscore and resetQuiz. resultscore holds the total
  // score obtained by the user in the quiz, and resetQuiz is a callback function to restart
  // the quiz. The const Result constructor takes these two variables as arguments.
  final int resultscore;
  final VoidCallback resetQuiz;
  const Result(this.resultscore, this.resetQuiz, {super.key});

// This function resultPhrase calculates the result text to be displayed based on the total
// score obtained by the user. It returns a string with the result text.
  String get resultPhrase {
    var resultText = "You did it !";
    if (resultscore <= 8) {
      resultText = 'You are Awesome and Innocent !';
    }
    else if (resultscore <= 12) {
      resultText = 'You are Likeable !';
    }
    else if (resultscore <= 16) {
      resultText = 'You are Strange !';
    }
    else if (resultscore <= 20) {
      resultText = 'You are Dark !';
    }
    else {
      resultText = 'You are Dope !';
    }
    return resultText;
  }
// This build method returns the layout of the widget. It displays the result phrase calculated
// by resultPhrase in a Text widget with a specified style. It also displays a TextButton widget
// to restart the quiz when clicked. The layout is centered using the Center widget, and the
// widgets are placed in a Column widget.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text("Restart Quiz"))
        ],
      ),
    );
  }
}