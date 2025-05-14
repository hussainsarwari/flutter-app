import 'dart:developer';

import 'package:flutter/material.dart';

class App3 extends StatefulWidget {
  const App3({super.key});

  @override
  State<App3> createState() => _App3State();
}

class _App3State extends State<App3> {
  List<Icon> icons = [
  ];
  List<String> questions = [
    "Is Flutter a UI toolkit?",
    "Is Dart a programming language?",
    "Is Flutter used for web development?",
    "Is Flutter only for mobile apps?",
    "Is Flutter open-source?",
  ];
  int questionIndex = 0;
  List<bool> answers = [true, true, true, false, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quiz app")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 20.0),
              Text(
                questions[questionIndex],
                style: TextStyle(color: Colors.white),
              ),

              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      bool currentAnswer = answers[questionIndex];
                      if (currentAnswer) {
                        icons.add(Icon(Icons.check, color: Colors.green));
                      } else {
                        icons.add(Icon(Icons.close, color: Colors.red));
                      }
                      setState(() {
                        questionIndex++;

                        if (questionIndex >= questions.length) {
                          questionIndex = 0;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text("True", style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(width: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      bool currentAnswer = answers[questionIndex];
                      if (currentAnswer) {
                        icons.add(Icon(Icons.check, color: Colors.green));
                      } else {
                        icons.add(Icon(Icons.close, color: Colors.red));
                      }
                      setState(() {
                        questionIndex++;
                        if (questionIndex >= questions.length) {
                          questionIndex = 0;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text("False", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                children: [
                  Text("Answers:", style: TextStyle(color: Colors.white)),
                  const SizedBox(width: 20.0),
                  Expanded(child: )
                 
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Nextpage');
                },
                child: Text(
                  "Previous page",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 20.0),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/App3');
                },
                child: Text("Next page", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
