import 'package:flutter/material.dart';

class ScorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scores'),
        backgroundColor:   const Color(0xfffdecd7),
      ),
      body: Container(
        color: const Color(0xfffdecd7),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.score, size: 80, color: Colors.blue),
              SizedBox(height: 20),
              Text(
                'Your Scores',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'View your scores and achievements here in the future.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
