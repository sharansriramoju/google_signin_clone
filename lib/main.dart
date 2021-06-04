import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _showPassword = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: width * 0.3,
                            height: height * 0.1,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://thumbs.dreamstime.com/b/google-icon-logo-simple-vector-filled-flat-google-icon-logo-solid-pictogram-isolated-white-background-159029191.jpg"))),
                          ),
                          Container(
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: width * 0.06,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(width * 0.03),
                            child: Text(
                              "to continue to Gmail",
                              style: TextStyle(
                                fontSize: width * 0.05,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: height * 0.035),
                            margin: EdgeInsets.all(width * 0.05),
                            child: TextField(
                              style: TextStyle(fontSize: width * 0.055),
                              cursorColor: Color(0x1F000000),
                              cursorHeight: height * 0.04,
                              obscureText: false,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    left: width * 0.04, bottom: height * 0.065),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black38,
                                  ),
                                  borderRadius:
                                      BorderRadius.circular(width * 0.015),
                                ),
                                labelText: "Email or phone",
                                labelStyle: TextStyle(
                                  fontSize: width * 0.05,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: width * 0.05),
                                child: Text(
                                  "Forgot Email?",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: width * 0.045,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.all(width * 0.05),
                            child: Text(
                              "Not your computer? Use Guest mode to sign in privately. Learn more",
                              style: TextStyle(fontSize: width * 0.043),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(width * 0.05),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Create account",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: width * 0.045,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(width * 0.02),
                                    color: Colors.blue,
                                  ),
                                  height: height * 0.055,
                                  width: width * 0.25,
                                  child: Center(
                                    child: Text(
                                      "Next",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.05,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    height: height * 0.075,
                    margin: EdgeInsets.all(width * 0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "English (United States)",
                              style: TextStyle(
                                fontSize: width * 0.04,
                              ),
                            ),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                        Container(
                          width: width * 0.52,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Help",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Privacy",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Terms",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
