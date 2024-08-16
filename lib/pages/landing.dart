import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Bible App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the login screen when tapped.
            Navigator.pushNamed(context, '/login');
          },
          child: const Text('Get Started!'),
        ),
      ),
    );
  }
}
