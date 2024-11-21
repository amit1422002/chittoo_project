import 'dart:async';
import 'package:flutter/material.dart';

class WinCertificatePage extends StatefulWidget {
  @override
  _WinCertificatePageState createState() => _WinCertificatePageState();
}

class _WinCertificatePageState extends State<WinCertificatePage> {
  final TextEditingController _controller = TextEditingController();
  bool _isFieldEnabled = true; // To enable/disable the text field
  int _remainingTime = 30; // Countdown timer value
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  // Start the 30-second timer
  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingTime == 0) {
        setState(() {
          _isFieldEnabled = false; // Disable text field
        });
        timer.cancel();
      } else {
        setState(() {
          _remainingTime--;
        });
      }
    });
  }

  // Handle the submit button press
  void _submitAnswer() {
    final answer = _controller.text;
    // You can process the answer here or navigate further
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Submitted Successfully!")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Win Certificate"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Tell me about yourself?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _controller,
              enabled: _isFieldEnabled,
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type your answer here...",
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Time Remaining: $_remainingTime seconds",
              style: TextStyle(color: Colors.red, fontSize: 16),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _isFieldEnabled ? null : _submitAnswer, // Only enable after timer
              child: Text("Submit Answer"),
            ),
          ],
        ),
      ),
    );
  }
}
