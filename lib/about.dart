import 'package:flutter/material.dart';
import 'package:rspgame/main.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: Center(
          child: Text(
            'About',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Welcome to the Rock Paper Scissors Game!\n\n'
              'This is a simple and fun game where you compete against the computer. The rules are straightforward:\n'
              '\t- Rock beats Scissors\n'
              '\t- Scissors beats Paper\n'
              '\t- Paper beats Rock\n\n'
              'How to Play:\n'
              '1. Choose either Rock, Paper, or Scissors by clicking on the respective button.\n'
              '2. The computer will randomly select Rock, Paper, or Scissors.\n'
              '3. The result will be displayed, indicating whether you won, lost, or it was a draw.\n\n'
              'Enjoy playing and good luck!',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
