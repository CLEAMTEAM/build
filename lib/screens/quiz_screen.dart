
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestion = 0;
  List<Map<String, Object>> questions = [
    {
      'question': 'Que signifie RSI en trading ?',
      'answers': ['Relative Strength Index', 'Real Stock Indicator', 'Rapid Signal Integration'],
      'correct': 0
    },
    {
      'question': 'Que représente une bougie rouge ?',
      'answers': ['Hausse du prix', 'Baisse du prix', 'Stabilité'],
      'correct': 1
    }
  ];
  int score = 0;

  void answer(int selected) {
    if (selected == questions[currentQuestion]['correct']) score++;
    setState(() => currentQuestion++);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quiz de Formation")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: currentQuestion < questions.length
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(questions[currentQuestion]['question'] as String, style: TextStyle(fontSize: 20)),
                ...List.generate((questions[currentQuestion]['answers'] as List).length, (index) {
                  return ElevatedButton(
                    onPressed: () => answer(index),
                    child: Text((questions[currentQuestion]['answers'] as List)[index]),
                  );
                })
              ],
            )
          : Center(
              child: Text("✅ Quiz terminé ! Score : $score/${questions.length}", style: TextStyle(fontSize: 22)),
            ),
      ),
    );
  }
}
