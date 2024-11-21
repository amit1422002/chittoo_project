import 'package:chittoo/pages/Certificate.dart';
import 'package:chittoo/pages/chat.dart';
import 'package:chittoo/pages/profile.dart';
import 'package:chittoo/pages/score.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
 
class BottomNavLayout extends StatefulWidget {
  @override
  _BottomNavLayoutState createState() =>
      _BottomNavLayoutState();
}

class _BottomNavLayoutState extends State<BottomNavLayout> {
  int _currentIndex = 3;
  final List<Widget> _pages = [
    CertificatePage(),
    ChatPage(),
    ScorePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey[200]!,
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        animationDuration: Duration(milliseconds: 300),
        index: _currentIndex,
        items: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.card_membership, size: 30, color: Colors.black),
              Text("Certificate", style: TextStyle(fontSize: 10)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.chat, size: 30, color: Colors.black),
              Text("Chat", style: TextStyle(fontSize: 10)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.score, size: 30, color: Colors.black),
              Text("Score", style: TextStyle(fontSize: 10)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person, size: 30, color: Colors.black),
              Text("Profile", style: TextStyle(fontSize: 10)),
            ],
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
