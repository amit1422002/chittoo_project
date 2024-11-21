import 'package:chittoo/pages/winCertificate.dart';
import 'package:flutter/material.dart';

class CertificatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor:   const Color(0xfffdecd7),
        title: Text("Certificate"),
      ),
      body: Container(

color: const Color(0xfffdecd7),        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WinCertificatePage()),
              );
            },
            child: Text('Win Certificate'),
          ),
        ),
      ),
    );
  }
}
