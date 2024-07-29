import 'dart:async';
import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'data.dart'; // Import your data file with the country list
import 'country.dart'; // Import the Country class

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  ConfettiController _confettiController = ConfettiController(duration: Duration(seconds: 1));
  Timer? _timer;
  int _remainingTime = 20;
  int _score = 0;
  int _currentQuestionIndex = 0;
  List<Country> countries = [];
  Country? currentCountry;
  bool showAnswer = false;
  String? selectedOption;
  List<Country> questionsPool = [];
  final int totalQuestions = 20;

  @override
  void initState() {
    super.initState();
    countries = List.from(countriesList); // Load countries from data.dart
    questionsPool = List.from(countries)..shuffle(); // Initialize the questions pool
    _currentQuestionIndex = 0;
    loadNewQuestion();
  }

  void loadNewQuestion() {
    _timer?.cancel(); // Cancel the previous timer
    setState(() {
      if (_currentQuestionIndex < totalQuestions && questionsPool.isNotEmpty) {
        currentCountry = questionsPool[_currentQuestionIndex];
        _currentQuestionIndex++;
        showAnswer = false;
        selectedOption = null;
        _remainingTime = 20;
        currentCountry!.options.shuffle(); // Shuffle the options for the current question
        startTimer();
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ThankYouScreen(score: _score, totalQuestions: totalQuestions)),
        );
      }
      _confettiController.stop(); // Stop confetti when loading a new question
    });
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;
        });
      } else {
        timer.cancel();
        loadNewQuestion();
      }
    });
  }

  void checkAnswer(String option) {
    _timer?.cancel(); // Cancel the timer when an answer is selected
    setState(() {
      showAnswer = true;
      selectedOption = option;
      if (option == currentCountry?.capital) {
        _score++;
        _confettiController.play(); // Play confetti if the answer is correct
      }
    });
  }

  Color getOptionColor(String option) {
    if (!showAnswer) return Colors.white;
    if (option == currentCountry?.capital) return Colors.lightGreenAccent; // Correct answer
    if (option == selectedOption) return Colors.redAccent; // Selected but incorrect
    return Colors.white; // Default color
  }

  Color getTextColor(String option) {
    if (!showAnswer) return Colors.black; // Default text color before answer is shown
    if (option == currentCountry?.capital) return Colors.black; // Text color for correct answer
    if (option == selectedOption) return Colors.white; // Text color for selected but incorrect
    return Colors.black; // Default text color for other options
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text.rich(
          TextSpan(
            text: 'CAPITAL QUIZ',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(2, 2),
                  blurRadius: 4,
                ),
                Shadow(
                  color: Colors.white.withOpacity(0.3),
                  offset: Offset(-2, -2),
                  blurRadius: 4,
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
        elevation: 5,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal, Colors.cyan],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 6,
                offset: Offset(0, 4),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.lightBlueAccent, Colors.lightGreenAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Question ${_currentQuestionIndex} of $totalQuestions',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'What is the capital of ${currentCountry!.name}?',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Time remaining: ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: '$_remainingTime seconds',
                          style: TextStyle(
                            color: _remainingTime < 10 ? Colors.red : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ...currentCountry!.options.map((option) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: GestureDetector(
                      onTap: showAnswer ? null : () => checkAnswer(option),
                      child: Container(
                        decoration: BoxDecoration(
                          color: getOptionColor(option),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        width: double.infinity,
                        height: 60,
                        alignment: Alignment.center,
                        child: Text(
                          option,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: getTextColor(option),
                          ),
                        ),
                      ),
                    ),
                  )),
                  if (showAnswer)
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text(
                        selectedOption == currentCountry!.capital
                            ? 'Correct!'
                            : 'Wrong! The correct answer is ${currentCountry!.capital}.',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: selectedOption == currentCountry!.capital
                              ? Colors.green
                              : Colors.red,
                        ),
                      ),
                    ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: selectedOption != null ? Colors.teal : Colors.grey,
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      minimumSize: Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: selectedOption != null ? loadNewQuestion : null,
                    child: Text('Next Question'),
                  ),
                ],
              ),
            ),
          ),
          // Single Confetti widget for optimized star effect
          Positioned.fill(
            child: ConfettiWidget(
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive, // Explosive effect
              shouldLoop: false,
              colors: [Colors.yellow, Colors.orange, Colors.red, Colors.blue, Colors.green],
              createParticlePath: drawStar, // Use star shape for confetti particles
              emissionFrequency: 0.05, // Increased frequency
              numberOfParticles: 150, // Decreased number of particles
              maxBlastForce: 30, // Decreased blast force
              minBlastForce: 10, // Decreased minimum blast force
              gravity: 0.1, // Adjust gravity for better effect
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _confettiController.dispose(); // Dispose of the ConfettiController
    _timer?.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  Path drawStar(Size size) {
    final Path path = Path();
    final double width = size.width;
    final double height = size.height;
    path.moveTo(width * 0.5, 0);
    path.lineTo(width * 0.67, height * 0.35);
    path.lineTo(width, height * 0.38);
    path.lineTo(width * 0.75, height * 0.62);
    path.lineTo(width * 0.82, height);
    path.lineTo(width * 0.5, height * 0.8);
    path.lineTo(width * 0.18, height);
    path.lineTo(width * 0.25, height * 0.62);
    path.lineTo(0, height * 0.38);
    path.lineTo(width * 0.33, height * 0.35);
    path.close();
    return path;
  }
}
class ThankYouScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;

  ThankYouScreen({required this.score, required this.totalQuestions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlueAccent, Colors.lightGreenAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText(
                    'Thank You!',
                    textStyle: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                ],
                isRepeatingAnimation: true,
              ),
              SizedBox(height: 20),
              Text(
                'You scored $score out of $totalQuestions',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.teal,
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  minimumSize: Size(200, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => QuizScreen()),
                  );
                },
                child: Text('PLAY AGAIN'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}