// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isHovered = false;
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 116, 101, 92),
        appBar: AppBar(
            title: Text(
              "Login",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Color.fromARGB(255, 207, 186, 174),
            elevation: 0.0,
            centerTitle: true),

        //add bottom nav bar

        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                    hintText: 'Username',
                    filled: true,
                    fillColor: Color.fromARGB(255, 207, 186, 174),
                    contentPadding: EdgeInsets.all(15),
                    hintStyle: TextStyle(
                      color: Color.fromARGB(153, 126, 85, 69),
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.brown,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            BorderSide(color: Colors.black, width: 2.0))),
              ),
              // add a bit of space between the two text editing controllers
              SizedBox(height: 60),

              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: Color.fromARGB(255, 207, 186, 174),
                    contentPadding: EdgeInsets.all(15),
                    hintStyle: TextStyle(
                      color: Color.fromARGB(153, 126, 85, 69),
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.brown,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            BorderSide(color: Colors.black, width: 2.0))),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  // In a real app, you would validate credentials here
                  Navigator.pushNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.blue, // Set the background color of the button
                  foregroundColor:
                      Colors.white, // Set the text color of the button
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text("Login"),
              ),

              SizedBox(height: 20),

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
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w100,
                      decoration: _isHovered
                          ? TextDecoration.underline
                          : TextDecoration.none,
                      decorationThickness: _isHovered ? 2.0 : 0.0,
                    ),
                    child: Text('Do Not Have An Account?'),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
        floatingActionButton: Positioned(
            bottom: 80.0,
            right: 16.0,
            child: ElevatedButton(
              onPressed: () {
                // Add login logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(
                    255, 238, 25, 25), // Set the background color of the button
                foregroundColor:
                    Colors.white, // Set the text color of the button
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text('help'),
            )));
  }
}









//in case i ever want a navigation bar
//add this to your pagestate
//int _currentIndex = 0;
// bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Login',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Settings',
//           ),
//         ],
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         backgroundColor: Color.fromARGB(255, 207, 186, 174),
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.grey,
//       ),
