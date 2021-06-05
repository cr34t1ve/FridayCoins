import 'package:flutter/material.dart';
import 'package:friday_coins/screens/completeprofile/completeprofile.dart';
import 'package:friday_coins/screens/signup/signup.dart';
import 'package:friday_coins/screens/splash/splash.dart';
import 'package:friday_coins/screens/step2/step2.dart';
import 'package:friday_coins/signin/signin.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Splash(),
      '/signin': (context) => SignIn(),
      '/signup': (context) => SignUp(),
      '/step2': (context) => Step2(),
      '/completeprofile': (context) => CompleteProfile(),
    },
  ));
}

