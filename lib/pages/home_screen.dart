import 'package:chittoo/pages/bottomNavLayout.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
      child:  BottomNavLayout()
      )
    );
  }
}