import 'package:flutter/material.dart';
import '../models/flashcard.dart';

class FlashcardWidget extends StatefulWidget {
  final Flashcard flashcard;

  const FlashcardWidget({Key? key, required this.flashcard}) : super(key: key);

  @override
  _FlashcardWidgetState createState() => _FlashcardWidgetState();
}

class _FlashcardWidgetState extends State<FlashcardWidget> {
  bool _showAnswer = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _showAnswer = !_showAnswer;
        });
      },
      child: Card(
        elevation: 8,
        margin: EdgeInsets.all(16),
        color: Color(0xFFF3EEE8), // Card background color
        shadowColor: Colors.black26,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          padding: EdgeInsets.all(24),
          width: double.infinity,
          height: 200,
          child: Center(
            child: Text(
              _showAnswer ? widget.flashcard.answer : widget.flashcard.question,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.brown[800],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}