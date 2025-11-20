# Flashy!
A simple static flashcard app that showcases a simple yet functional study tool
for memorizing notes and terminologies. Memorize your notes efficiently using 
cards consisting of a question up front and an answer at the back. Just tap the
card to reveal the answer!


## Getting Started

This project is made as an activity for the course CSE20. 
A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
- [FlashCards Learning App in Flutter](https://www.geeksforgeeks.org/flutter/flashcards-learning-app-in-flutter/)


## Main Features Implemented

- Tap-to-flip card UI
Each flashcard is a StatefulWidget that toggles between question and answer on
tap (handled with a GestureDetector and a _showAnswer flag)

- Per-card State Reset
didUpdateWidget compares widget.flashcard to oldWidget.flashcard and resets
_showAnswer to false when the active card changes to the next.

- Model-driven data
The widget receives a Flashcard model (final Flashcard flashcard) so content
is provided by the app data layer.

- Encapsulation of Presentation Logic
Flipping and UI state live inside teh FlashcardWidget so parent screens can
swap cards without managing answer visibility.


## List of Widgets Used
- MaterialApp   - Top-level app wrapper
- Scaffold      - Basic page layout
- AppBar        - Top application bar with title and styling
- Center        - Centers content
- Column        - Vertical layout for stacked children
- Row           - Horizontal layout
- Container     - General-purpose box
- Card          - Flashcard surface
- GestureDetector   - Listens to tap events to flip the flashcard
- FadeTransition    - Transition animation
- Icon          - Decorative Icons
- Text          - Text for titles, flashcard content, etc.
- SizedBox      - Spacing between elements
- Padding       - Inner spacing around widgets
- LinearProgessIndicator    - Study progress bar
- Expanded                  -  Flashcard area takes remaining space
- SingleChildScrollView     - Enables scrolling within flashcard text
- FloatingActionButton      - Previous/Next navigation buttons


## Steps to run the project
### Overview
The app opens to a splash-screen with a gradient logo, then transitions
to the main HomeScreen.

The home screen displays a progress bar, the current flashcard, and
navigation buttons.

### Basic Interactions
- Tap the flashcard are to flip between the question(front) and the answer (back)
- Use the left and right buttons below the card to navigate between cards
- The linear progress bar reflects your current position through the deck.
- The app automatically resets the flashcard to front when moving through cards.

## Reflections of the Developers:

### NAGUIT, Kyle Chester P.
One of the most significant challenges encountered during the development of Flashy
was the enhancement of its user interface. Initially, the group planned to create 
a simple static application that displays a single question with a 'Show Answer'
button. However, this concept was too simplistic and likely to result in a poor
user experience.

To address this, the design was revised to be more visually appealing with a
minimalist approach. The new plan involved creating a user interface where each
question is presented on a flashcard. The 'Show Answer' button was replaced with a
GestureDetector widget, enabling the user to flip the card with a touch gesture. To
implement this flashcard design, several widgets were used. Among these are the Card
widget for the flashcard's surface, FadeTransition to create a smoother UI, and a
LinearProgressIndicator to display the user's study progress.
