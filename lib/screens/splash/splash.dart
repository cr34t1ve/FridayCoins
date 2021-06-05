import 'package:flutter/material.dart';

class Splash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.popAndPushNamed(context, '/signin');
    });
    return Scaffold(
      backgroundColor: Color(0xFF662C92),
      body: Center(
        child: Image.asset(
          'assets/images/image 22.png',
          width: 229.0,
        ),
      ),
    );
  }
}