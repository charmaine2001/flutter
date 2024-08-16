import 'package:flutter/material.dart';
import 'pages/createAccount.dart';
import 'pages/login.dart';
import 'pages/home.dart';
import 'pages/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      // home: const HomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/login': (context) => LoginPage(),
        '/createAccount': (context) => CreateAccountPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
