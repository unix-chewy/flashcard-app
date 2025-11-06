import 'package:flutter/material.dart';
import '../widgets/flashcard_widget.dart';
import '../data/flashcard_data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAF7),
      appBar: AppBar(
        title: Text(
          'Flashy!',
          style: TextStyle(
            color: Color(0xFF9B87F5),
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
        ),
        backgroundColor: Color(0xFFF3EEE8),
        elevation: 2,
        iconTheme: IconThemeData(color: Color(0xFF9B87F5)),
      ),
      body: Column(
        children: [
          // Progress indicator
          Padding(
            padding: EdgeInsets.all(16),
            child: LinearProgressIndicator(
              value: (_currentIndex + 1) / flashcards.length,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF5AC8FA)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Text(
            'Card ${_currentIndex + 1} of ${flashcards.length}',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.brown[700],
            ),
          ),
          SizedBox(height: 20),

          // Flashcard
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: FlashcardWidget(
                key: ValueKey<int>(_currentIndex),
                flashcard: flashcards[_currentIndex],
              ),
            ),
          ),

          // Navigation buttons - CENTERED under flashcard
          Padding(
            padding: EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center the buttons
              children: [
                // Previous Button
                FloatingActionButton(
                  onPressed: _currentIndex > 0
                      ? () {
                    setState(() {
                      _currentIndex--;
                    });
                  }
                      : null,
                  backgroundColor: _currentIndex > 0
                      ? Color(0xFF5AC8FA)
                      : Colors.grey[400],
                  foregroundColor: Colors.white,
                  child: Icon(Icons.arrow_back),
                  elevation: 4,
                ),

                SizedBox(width: 40), // Space between buttons

                // Next Button
                FloatingActionButton(
                  onPressed: _currentIndex < flashcards.length - 1
                      ? () {
                    setState(() {
                      _currentIndex++;
                    });
                  }
                      : null,
                  backgroundColor: _currentIndex < flashcards.length - 1
                      ? Color(0xFF5AC8FA)
                      : Colors.grey[400],
                  foregroundColor: Colors.white,
                  child: Icon(Icons.arrow_forward),
                  elevation: 4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}