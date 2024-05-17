import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Image.asset(
                'assets/images/FAQ.jpg', // Path to local image asset
                height: 185,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const QuestionWithAnswer(
                question: 'How to use this App?',
                answer:
                    'Answer to question 1: This is a mock answer for question 1. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              ),
              const SizedBox(height: 16),
              const QuestionWithAnswer(
                question: 'How can send money?',
                answer:
                    'Go to send Money and send transactions',
              ),
              const SizedBox(height: 16),
              const QuestionWithAnswer(
                question: 'How Can I earn Money?',
                answer:
                    'Work Hard and Earn More.',
              ),
              // Add more questions here if needed
            ],
          ),
        ),
      ),
    );
  }
}

class QuestionWithAnswer extends StatefulWidget {
  final String question;
  final String answer;

  const QuestionWithAnswer({
    Key? key,
    required this.question,
    required this.answer,
  }) : super(key: key);

  @override
  State<QuestionWithAnswer> createState() => _QuestionWithAnswerState();
}

class _QuestionWithAnswerState extends State<QuestionWithAnswer> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              widget.question,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            trailing: IconButton(
              icon: Icon(_isExpanded ? Icons.expand_less : Icons.expand_more),
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
            ),
          ),
          if (_isExpanded)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                widget.answer,
                style: TextStyle(fontSize: 16),
              ),
            ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: FAQ(),
  ));
}
