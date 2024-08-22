// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  // const LandingPage({super.key});
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final logoHeight = constraints.maxHeight / 8; // Calculate logo height

          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bg/background_11.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Logo covering 1/8th of the top page
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/bg/logo_3_png_1.jpeg',
                  height: logoHeight,
                  width: constraints.maxWidth, // Make logo span the full width
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.black.withOpacity(0.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: logoHeight), // Space for the logo
                    Text(
                      'My Bible App',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 150),

                    // to add some space above the the text wrap it in a container
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'The fear of the Lord is the beginning of wisdom, and knowledge of the Holy One is understanding...',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 36,
                          fontFamily: 'IslandMoments',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      'Proverbs 9:10',
                      style: TextStyle(
                        fontFamily: 'IslandMoments',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 100),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 170, 158, 153),
                          foregroundColor: Colors.black,
                        ),
                        child: const Text('Personalise Your Experience'),
                      ),
                    ),
                    SizedBox(height: 50),

                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/createAccount');
                      },
                      child: MouseRegion(
                        onEnter: (event) {
                          setState(() {
                            _isHovered = true;
                          });
                        },
                        onExit: (event) {
                          setState(() {
                            _isHovered = false;
                          });
                        },
                        child: AnimatedDefaultTextStyle(
                          duration: Duration(milliseconds: 200),
                          style: TextStyle(
                            color: Color.fromARGB(255, 132, 217, 238),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w100,
                            decoration: _isHovered
                                ? TextDecoration.underline
                                : TextDecoration.none,
                            decorationThickness: _isHovered ? 2.0 : 0.0,
                          ),
                          child: Text('Get Started without an account'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
