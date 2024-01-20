// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, use_build_context_synchronously, avoid_print

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'login.dart';
import 'dart:convert';

class SubMenuPage extends StatelessWidget {
  const SubMenuPage({super.key});


    // Function to show a SnackBar with the response
  void showResponseSnackBar(BuildContext context, String response) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(response),
        duration: Duration(seconds: 3),
      ),
    );
  }

  // Function to make POST requests for the first button
  Future<void> postFirstButton(BuildContext context) async {
    // Define the data for the first button
    Map<String, dynamic> requestData = {
      "stage_id": 1,
      "classroom_id": 1,
      "term_id": 1,
      "subject": 1,
      // Add other data fields as needed for the first button
    };

    // Define the API endpoint for the first button
    String endpoint = 'https://t.alnefely.tk/api/lessons';

    // Define the token
    String token = '36|SpYAQz3Mm3YwL7f6Pn8MmMAisysvX9yulHqhV4C190f2022a';

    // Call the postData function for the first button
    await postData(endpoint, requestData, token, context);
  }

  // Function to make POST requests for the second button
  Future<void> postSecondButton(BuildContext context) async {
    // Define the data for the second button
    Map<String, dynamic> requestData = {
      "stage_id": 2,
      "classroom_id": 2,
      "term_id": 2,
      "subject": 2,
      // Add other data fields as needed for the second button
    };

    // Define the API endpoint for the second button
    String endpoint = 'https://t.alnefely.tk/api/lessons';

    // Define the token
    String token = '36|SpYAQz3Mm3YwL7f6Pn8MmMAisysvX9yulHqhV4C190f2022a';

    // Call the postData function for the second button
    await postData(endpoint, requestData, token, context);
  }

  // Function to make POST requests for the third button
  Future<void> postThirdButton(BuildContext context) async {
    // Define the data for the third button
    Map<String, dynamic> requestData = {
      "stage_id": 3,
      "classroom_id": 3,
      "term_id": 3,
      "subject": 3,
      // Add other data fields as needed for the third button
    };

    // Define the API endpoint for the third button
    String endpoint = 'https://t.alnefely.tk/api/lessons';

    // Define the token
    String token = '36|SpYAQz3Mm3YwL7f6Pn8MmMAisysvX9yulHqhV4C190f2022a';

    // Call the postData function for the third button
    await postData(endpoint, requestData, token, context);
  }
Future<void> postData(String endpoint, Map<String, dynamic> data, String token, BuildContext context) async {
  try {
    final http.Response response = await http.post(
      Uri.parse(endpoint),
      headers: {'Authorization': 'Bearer $token', 'Content-Type': 'application/json'},
      body: json.encode(data),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseBody = json.decode(response.body);
      String responseMessage = 'Request successful! Response body: $responseBody';
      print(responseMessage);
      showResponseSnackBar(context, responseMessage);
    } else if (response.statusCode == 401) {
      // Handle unauthenticated response
      final Map<String, dynamic> responseBody = json.decode(response.body);
      String errorMessage = 'Unauthenticated: ${responseBody['message']}';
      print(errorMessage);
      showResponseSnackBar(context, errorMessage);
    } else {
      String errorMessage = 'Error: ${response.statusCode}, ${response.reasonPhrase}\nResponse body: ${response.body}';
      print(errorMessage);
      showResponseSnackBar(context, errorMessage);
    }
  } catch (error) {
    String errorMessage = 'Error: $error';
    print(errorMessage);
    showResponseSnackBar(context, errorMessage);
  }
}


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
              left: 27,
              top: 1037,
              child: Container(
                width: 297,
                height: 95,
                decoration: ShapeDecoration(
                  color: Color(0xFFFAFAFA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 182.70,
              top: 20,
              child: SizedBox(
                width: 152,
                height: 56,
                child: Text(
                  'ماده العلوم',
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
              left: 263.30,
              top: 75,
              child: SizedBox(
                width: 67,
                height: 37,
                child: Text(
                  'دروسي ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 230,
              top: 137,
              child: SizedBox(
                width: 93,
                height: 30,
                child: Text(
                  'الوحده الاولي ',
                  style: TextStyle(
                    color: Color(0xFF182844),
                    fontSize: 16,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 232,
              top: 528,
              child: SizedBox(
                width: 91,
                height: 30,
                child: Text(
                  'الوحده الثانيه',
                  style: TextStyle(
                    color: Color(0xFF182844),
                    fontSize: 16,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 25,
              top: 193,
              child: Container(
                width: 297,
                height: 95,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 297,
                        height: 95,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFAFAFA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 225.30,
                      top: 69,
                      child: SizedBox(
                        width: 47,
                        height: 16,
                        child: Text(
                          'الي الدرس',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Baloo Bhaijaan 2',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 121.30,
                      top: 31,
                      child: SizedBox(
                        width: 76,
                        height: 28,
                        child: OutlinedButton(
                          child: Text(
                            'الدرس الاول',
                            style: TextStyle(
                              color: Color(0xFF1B3D6F),
                              fontSize: 15,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          onPressed: () {
                            try {
    postFirstButton(context);
  } catch (e) {
    print('Error in onPressed: $e');
  }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 25,
              top: 584,
              child: Container(
                width: 297,
                height: 95,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 297,
                        height: 95,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFAFAFA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 225.30,
                      top: 69,
                      child: SizedBox(
                        width: 47,
                        height: 16,
                        child: Text(
                          'الي الدرس',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Baloo Bhaijaan 2',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 121.30,
                      top: 31,
                      child: SizedBox(
                        width: 76,
                        height: 28,
                        child: OutlinedButton(
                          child: Text(
                            'الدرس الاول',
                            style: TextStyle(
                              color: Color(0xFF1B3D6F),
                              fontSize: 15,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          onPressed: () {postFirstButton(context);},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 25,
              top: 694,
              child: Container(
                width: 297,
                height: 34,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 297,
                        height: 34,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFAFAFA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 225.30,
                      top: 24.69,
                      child: SizedBox(
                        width: 47,
                        height: 5.73,
                        child: Text(
                          'الي الدرس',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Baloo Bhaijaan 2',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 25,
              top: 303,
              child: Container(
                width: 297,
                height: 95,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 297,
                        height: 95,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFAFAFA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 225.30,
                      top: 69,
                      child: SizedBox(
                        width: 47,
                        height: 16,
                        child: Text(
                          'الي الدرس',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Baloo Bhaijaan 2',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 115,
                      top: 31,
                      child: SizedBox(
                        width: 83,
                        height: 28,
                        child: OutlinedButton(
                          child: Text(
                            'الدرس الثاني',
                            style: TextStyle(
                              color: Color(0xFF1B3D6F),
                              fontSize: 15,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          onPressed: () {
                            postSecondButton(context);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 25,
              top: 413,
              child: Container(
                width: 297,
                height: 95,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 297,
                        height: 95,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFAFAFA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 225.30,
                      top: 69,
                      child: SizedBox(
                        width: 47,
                        height: 16,
                        child: Text(
                          'الي الدرس',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Baloo Bhaijaan 2',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 115,
                      top: 31,
                      child: SizedBox(
                        width: 83,
                        height: 28,
                        child: OutlinedButton(
                          child: Text(
                            'الدرس الثالث',
                            style: TextStyle(
                              color: Color(0xFF1B3D6F),
                              fontSize: 15,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          onPressed: () {
                            postThirdButton(context);
                            },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 58,
              top: 742,
              child: Container(
                width: 245,
                height: 41,
                decoration: ShapeDecoration(
                  color: Color(0xFFFA8000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(200),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 130,
              top: 740,
              child: ButtonTheme(
                minWidth: 245,
                height: 41,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 0, color: Color(0xFFFA8000))),
                  child: Text(
                    'رجوع',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Baloo Bhaijaan 2',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                ),
              ),
            ),
            Positioned(
              left: 27,
              top: 719,
              child: Container(
                width: 311,
                height: 21,
                decoration: BoxDecoration(color: Colors.white),
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
    home: SubMenuPage(),
  ));
}
