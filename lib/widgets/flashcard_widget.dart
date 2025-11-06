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
  void didUpdateWidget(covariant FlashcardWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.flashcard != oldWidget.flashcard) {
      setState(() {
        _showAnswer = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _showAnswer = !_showAnswer;
        });
      },
      child: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: _showAnswer
              ? _buildCard(widget.flashcard.answer, ValueKey(true))
              : _buildCard(widget.flashcard.question, ValueKey(false)),
        ),
      ),
    );
  }

  Widget _buildCard(String text, Key key) {
    return Card(
      key: key,
      elevation: 8,
      margin: EdgeInsets.all(16),
      color: Color(0xFFF3EEE8),
      shadowColor: Colors.black26,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: EdgeInsets.all(24),
        width: 600, // Fixed width
        height: 600, // Fixed height
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // This centers vertically
          crossAxisAlignment: CrossAxisAlignment.center, // This centers horizontally
          children: [
            // Icon
            Icon(
              _showAnswer ? Icons.lightbulb_outline : Icons.help_outline,
              size: 48,
              color: _showAnswer ? Color(0xFF5AC8FA) : Color(0xFF9B87F5),
            ),
            SizedBox(height: 20),
            // Text content - perfectly centered
            Expanded(
              child: Container(
                alignment: Alignment.center, // Additional centering
                child: SingleChildScrollView(
                  child: Text(
                    text,
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
          ],
        ),
      ),
    );
  }
}