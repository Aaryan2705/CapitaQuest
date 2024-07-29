import 'package:flutter/material.dart';
import 'quiz_screen.dart'; // Import the quiz screen

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToQuizScreen();
  }

  void _navigateToQuizScreen() async {
    await Future.delayed(Duration(seconds: 3)); // Duration of the splash screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => QuizScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal, // Background color for the splash screen
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'assets/images/ok.png', // Replace with your logo image
            fit: BoxFit.cover, // Cover the entire screen
          ),
        ),
      ),
    );
  }
}
