import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buildQuestion extends StatefulWidget {
  const buildQuestion({Key? key}) : super(key: key);

  @override
  _buildQuestionState createState() => _buildQuestionState();
}

class _buildQuestionState extends State<buildQuestion> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Which planet is the hottest'
        ),
      ],
    );
  }
}
