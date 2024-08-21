// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';

// class CreateAccountPage extends StatefulWidget {
//   @override
//   _CreateAccountPageState createState() => _CreateAccountPageState();
// }

// class _CreateAccountPageState extends State<CreateAccountPage> {
//   bool _isHovered = false;
//   final _createusernameController = TextEditingController();
//   final _createpasswordController = TextEditingController();
//   final _emailController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Create Account"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               decoration: InputDecoration(labelText: 'Username'),
//             ),
//             TextField(
//               decoration: InputDecoration(labelText: 'Email'),
//             ),
//             TextField(
//               decoration: InputDecoration(labelText: 'Password'),
//               obscureText: true,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/login');
//               },
//               child: Text("Create Account"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  bool _isHovered = false;
  final _createusernameController = TextEditingController();
  final _createpasswordController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "Create Account",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Color.fromARGB(153, 74, 168, 197),
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
                controller: _createusernameController,
                decoration: InputDecoration(
                    hintText: 'Enter Username',
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(15),
                    hintStyle: TextStyle(
                      color: Color.fromARGB(153, 74, 168, 197),
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
                controller: _createpasswordController,
                decoration: InputDecoration(
                    hintText: 'Enter Password',
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(15),
                    hintStyle: TextStyle(
                      color: Color.fromARGB(153, 74, 168, 197),
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
              SizedBox(height: 60),

              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    hintText: 'eg bibleapp@gmail.com',
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(15),
                    hintStyle: TextStyle(
                      color: Color.fromARGB(153, 74, 168, 197),
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
                child: Text("Create Account"),
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
                    child: Text('Login Using Facebook'),
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


















// body: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _searchField(),
//             SizedBox(
//               height: 40,
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20),
//                   child: Text(
//                     'Category',
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//                 // since we used a column we can insert sizebox and set to desired height to put some space between the container and the text 'category'
//                 SizedBox(height: 15),
//                 Container(
//                   height: 120,
//                   // color: Colors.green,
//                   child: ListView.separated(
//                     itemCount: categories.length,
//                     scrollDirection: Axis.horizontal,
//                     padding: EdgeInsets.only(left: 20, right: 20),
//                     separatorBuilder: (context, index) => SizedBox(
//                       width: 25,
//                     ),