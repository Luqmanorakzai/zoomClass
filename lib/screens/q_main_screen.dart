// quiz_screen.dart

import 'package:flutter/material.dart';
import '../models/question.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  List<int> userAnswers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: currentQuestionIndex < questions.length
          ? buildQuestion()
          : buildResult(context),
    );
  }

  Widget buildQuestion() {
    var question = questions[currentQuestionIndex];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question.questionText,
          style: TextStyle(fontSize: 24),
        ),
        ...List.generate(question.options.length, (index) {
          return ListTile(
            title: Text(question.options[index]),
            leading: Radio<int>(
              value: index,
              groupValue: userAnswers.length > currentQuestionIndex
                  ? userAnswers[currentQuestionIndex]
                  : -1,
              onChanged: (value) {
                setState(() {
                  if (userAnswers.length > currentQuestionIndex) {
                    userAnswers[currentQuestionIndex] = value!;
                  } else {
                    userAnswers.add(value!);
                  }
                });
              },
            ),
          );
        }),
        ElevatedButton(
          onPressed: () {
            if (currentQuestionIndex < questions.length - 1) {
              setState(() {
                currentQuestionIndex++;
              });
            } else {
              setState(() {
                currentQuestionIndex++;
              });
            }
          },
          child: Text('Next'),
        ),
      ],
    );
  }

  Widget buildResult(BuildContext context) {
    int correctAnswers = 0;
    for (int i = 0; i < questions.length; i++) {
      if (userAnswers[i] == questions[i].correctOptionIndex) {
        correctAnswers++;
      }
    }
    double percentage = (correctAnswers / questions.length) * 100;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your Score: ${percentage.toStringAsFixed(2)}%',
            style: TextStyle(fontSize: 24),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                currentQuestionIndex = 0;
                userAnswers.clear();
              });
            },
            child: Text('Restart'),
          ),
        ],
      ),
    );
  }
}
