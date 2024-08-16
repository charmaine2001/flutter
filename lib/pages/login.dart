import 'package:flutter/material.dart';
// import 'pages/createAccount.dart';
// import 'pages/home.dart'; // Add this line

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Simulate a successful login action
                // In a real app, you would validate credentials here
                Navigator.pushNamed(context, '/home');
              },
              child: Text("Login"),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/createAccount');
              },
              child: Text("Create Account"),
            ),
          ],
        ),
      ),
    );
  }
}
