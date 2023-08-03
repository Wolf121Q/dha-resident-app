import 'package:flutter/material.dart';

import 'dart:io' show Platform;
import '../../../constant.dart';
import '../../widgets/bNavBar.dart';

class LogIn extends StatefulWidget {
  static const routeName = '/login';
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  bool _showPassword = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double scWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Section 1: Non-scrollable content
            Container(
              child: Stack(
                children: [
                  Container(
                    margin: Platform.isAndroid
                        ? EdgeInsets.only(top: 0)
                        : EdgeInsets.only(top: 0),
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      'asserts/images/frame.png',
                      width: 200,
                      height: 200,
                    ),
                  ),
                  Container(
                    margin: Platform.isAndroid
                        ? EdgeInsets.only(top: 120)
                        : EdgeInsets.only(top: 130),
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'asserts/icons/icon.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  Container(
                    margin: Platform.isAndroid
                        ? EdgeInsets.only(top: 260)
                        : EdgeInsets.only(top: 270),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "DHA ",
                              style: TextStyle(
                                  color: appcolor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Islamabad",
                              style: TextStyle(
                                  color: blackColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          "Defence Housing Authority",
                          style: TextStyle(
                            color: appcolor,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Section 2: Scrollable content
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 25,
                            right: 25,
                            top: 25,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email/Consumer ID",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  autofocus: false,
                                  style: TextStyle(
                                      fontSize: 19.0, color: Colors.black87),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: drakGreyColor,
                                    contentPadding: const EdgeInsets.only(
                                        left: 18.0, bottom: 8.0, top: 8.0),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your email';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    setState(() {
                                      _email = value.trim();
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        //////////////////
                        Container(
                          margin: EdgeInsets.only(left: 25, right: 25, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Password",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                                child: TextFormField(
                                  textInputAction: TextInputAction.done,
                                  autofocus: false,
                                  style: TextStyle(
                                      fontSize: 19.0, color: Colors.black87),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: drakGreyColor,
                                    contentPadding: const EdgeInsets.only(
                                        left: 18.0, bottom: 8.0, top: 8.0),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.circular(roundBtn),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.circular(roundBtn),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        _showPassword
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _showPassword = !_showPassword;
                                        });
                                      },
                                    ),
                                  ),
                                  obscureText:
                                      !_showPassword, // Toggle visibility
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your password';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    setState(() {
                                      _password = value.trim();
                                    });
                                  },
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 10,
                                ),
                                decoration: BoxDecoration(
                                    gradient: lgBlue,
                                    borderRadius:
                                        BorderRadius.circular(roundBtn)),
                                width: scWidth,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      print(
                                          'Email: $_email, Password: $_password');
                                    }
                                  },
                                  child: Text(
                                    'LogIn',
                                    style: TextStyle(color: btnTextColor),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    padding: EdgeInsets.symmetric(vertical: 12),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(roundBtn),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                                alignment: Alignment.center,
                                child: Text("or"),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                                alignment: Alignment.center,
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    minimumSize: Size(10, 0),
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  child: Text(
                                    "Forgat Password?",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        /////////////////
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          child: Column(children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don't have an account? ",
                                    style: TextStyle(
                                        color: blackColor,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      minimumSize: Size(10, 0),
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                    ),
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                          color: appcolor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 0,
                              ),
                              decoration: BoxDecoration(
                                  gradient: lgBlue,
                                  borderRadius:
                                      BorderRadius.circular(roundBtn)),
                              width: scWidth,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BottomNavBar()));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'For Any Query Please Call At ',
                                      style: TextStyle(color: btnTextColor),
                                    ),
                                    Text(
                                      '1092',
                                      style: TextStyle(
                                          color: btnTextColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(roundBtn),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12),
                              alignment: Alignment.center,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "This app is olny For present residents of DHAl-R",
                                    style: TextStyle(
                                        color: blackColor,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "Same login/password can be used for used for",
                                    style: TextStyle(
                                        color: blackColor,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          minimumSize: Size(10, 0),
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                        ),
                                        child: Text(
                                          "DHAl-R Member Portal",
                                          style: TextStyle(
                                              color: appcolor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Text(
                                        " (Only Members)",
                                        style: TextStyle(
                                            color: blackColor,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
