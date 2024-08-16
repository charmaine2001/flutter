// import 'package:flutter/material.dart';

// class LandingPage extends StatelessWidget {
//   const LandingPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/bg/background_11.jpeg'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Container(
//             color: Colors.black.withOpacity(0.5),
//             child: Column(
//               mainAxisAlignment:
//                   MainAxisAlignment.start, // Align items from the top
//               children: [
//                 // Logo
//                 Padding(
//                   padding:
//                       const EdgeInsets.only(top: 40), // Add padding at the top
//                   child: Image.asset(
//                       'assets/bg/logo_3_png_1.jpeg'), // Replace with your logo path
//                 ),
//                 SizedBox(height: 20),
//                 // Title
//                 Text(
//                   'My Bible App',
//                   style: TextStyle(
//                     fontSize: 48,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//                 SizedBox(height: 10), // Reduce spacing
//                 // Verse
//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 20), // Add horizontal padding
//                   child: Text(
//                     'The fear of the Lord is the beginning of wisdom, and knowledge of the Holy One is understanding.',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 40),
//                 // Button
//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 20), // Add horizontal padding
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.pushNamed(context, '/login');
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.green,
//                       foregroundColor: Colors.black,
//                     ),
//                     child: const Text('Get Started!'),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

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
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'The fear of the Lord is the beginning of wisdom, and knowledge of the Holy One is understanding.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Times New Roman',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.black,
                        ),
                        child: const Text('Get Started!'),
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
