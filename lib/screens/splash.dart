import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gym_management_2/screens/login_form.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 5 seconds and then navigate to the demo.dart page
    Timer(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Strength Sync',
              style: TextStyle(
                color: Colors.green, // Set text color to green
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0), // Add some space between title and message
            const Text(
              'Your ultimate gym companion',
              style: TextStyle(
                color: Colors.green, // Set text color to green
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 20.0), // Add some space between message and image
            Image.asset(
              'assets/logo.png', // Replace 'logo.png' with your logo file name
              height: 300,
              width: 300,
            ),
          ],
        ),
      ),
    );
  }
}