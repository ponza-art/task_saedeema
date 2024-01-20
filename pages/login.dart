// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'subject_menu.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 360,
        height: 800,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Positioned(
              left: 173,
              top: 38,
              child: SizedBox(
                width: 162,
                child: Text(
                  'تسجيل دخول',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 263,
              top: 416,
              child: SizedBox(
                width: 69,
                child: Text(
                  'الايميل',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Baloo Bhaijaan 2',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 241,
              top: 499,
              child: SizedBox(
                width: 69,
                child: Text(
                  'الرقم السري',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Baloo Bhaijaan 2',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 44,
              top: 447,
              child: Container(
                width: 270,
                height: 35,
                decoration: ShapeDecoration(
                  color: Color(0xFFF0F0F0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(200),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 46,
              top: 532,
              child: Container(
                width: 270,
                height: 35,
                decoration: ShapeDecoration(
                  color: Color(0xFFF0F0F0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(200),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 83,
              top: 658,
              child: Container(
                width: 194,
                height: 41,
                decoration: ShapeDecoration(
                  color: Color(0xFF1F477A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(200),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 125,
              top: 657,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 5, color: Color(0x001f477a))),
                child: Text(
                  'تسجيل',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Baloo Bhaijaan 2',
                    fontWeight: FontWeight.w900,
                    height: 0,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SubMenuPage()),
                  );
                },
              ),
            ),
            Positioned(
              left: 212,
              top: 588,
              child: SizedBox(
                width: 132,
                child: Text(
                  'فقدت كلمه السر ؟',
                  style: TextStyle(
                    color: Color(0xFF0E284E),
                    fontSize: 14,
                    fontFamily: 'Baloo Bhaijaan 2',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 128,
              top: 321,
              child: Text(
                '! أهلا وسهلا بعودتك ',
                style: TextStyle(
                  color: Color(0xFF263238),
                  fontSize: 14,
                  fontFamily: 'Baloo Bhaijaan 2',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              left: 101,
              top: 356,
              child: Container(
                width: 157,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFF263238),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: SizedBox(
                width: 360,
                height: 254,
                child: Stack(
                  children: [
                    Image.asset('assets/images/vector_86.png'),
                    Padding(
                      padding: EdgeInsets.fromLTRB(44.0, 56.0, 221.0, 103.0),
                      child: Image.asset('assets/images/vector.png'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}
