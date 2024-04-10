// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:trivia_quiz/complete_page.dart';
import 'package:trivia_quiz/home_page.dart';

void main() {
  runApp(const TrviaQuiz());
}

class TrviaQuiz extends StatelessWidget {
  const TrviaQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // debugShowCheckedModeBanner: false,
       home: HomePage()
       );
  }
}

