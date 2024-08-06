import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Bible Study',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color.fromARGB(204, 211, 158, 176),
          elevation: 0.0,
          centerTitle: true,
          leading: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              '/home/charmaine/Pictures/NEW FOLDER/flutter/assets/icons/Arrow - Left 2.svg',
              height: 20,
              width: 20,
            ),
            decoration: BoxDecoration(
                color: Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10)),
          ),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: 37,
                child: SvgPicture.asset(
                  '/home/charmaine/Pictures/NEW FOLDER/flutter/assets/icons/dots.svg',
                  height: 5,
                  width: 5,
                ),
                decoration: BoxDecoration(
                    color: Color(0xffF7F8F8),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ]),
    );
  }
}
