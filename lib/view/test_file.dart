import 'package:dha_resident_app/view/screens/dashboard/bottomNavBar.dart';
import 'package:flutter/material.dart';

import 'dart:io' show Platform;
import '../../../constant.dart';

class TestFile extends StatefulWidget {
  static const routeName = '/login';

  @override
  State<TestFile> createState() => _TestFileState();
}

class _TestFileState extends State<TestFile> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _cnic = '';
  String _cosumerId = '';
  String _mobileNo = '';
  String _password = '';
  String _repassword = '';
  bool _showPassword = false;
  bool _reshowPassword = false;
  bool isChecked = false;

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
                    margin: EdgeInsets.only(
                        left: 25, right: 25, top: 25, bottom: 10),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email Address",
                                style: TextStyle(
                                  // height: 2,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  autofocus: false,
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.black87),
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

                        ///--------------------
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CNIC",
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
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your cnic';
                                    }
                                    if (value.length < 13) {
                                      return 'Please enter 13 digit cnic no';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    setState(() {
                                      _cnic = value.trim();
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),

                        ///--------------------

                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Consumer ID",
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
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your consumer id';
                                    }

                                    return null;
                                  },
                                  onChanged: (value) {
                                    setState(() {
                                      _cosumerId = value.trim();
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),

                        ///--------------------

                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mobile Number",
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
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your mobile no';
                                    }

                                    return null;
                                  },
                                  onChanged: (value) {
                                    setState(() {
                                      _mobileNo = value.trim();
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),

                        ///--------------------
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
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
                              ]),
                        ),

                        ///--------------------
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
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
                                        _reshowPassword
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _reshowPassword = !_reshowPassword;
                                        });
                                      },
                                    ),
                                  ),
                                  obscureText:
                                      !_reshowPassword, // Toggle visibility
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your password';
                                    }
                                    if (value != _password) {
                                      return 'Please enter correct comfirm password';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    setState(() {
                                      _repassword = value.trim();
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),

                        ///--------------------

                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 25,
                                    height: 25,
                                    child: Checkbox(
                                      checkColor: greyColor,
                                      fillColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                              (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.disabled)) {
                                          return drakGreyColor;
                                        }
                                        return appcolor;
                                      }),
                                      value: isChecked,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  Text(
                                    "Read Terms and Conditions",
                                    style: TextStyle(
                                      height: 1,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        ///--------------------

                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                    'Sign Up',
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
                            ],
                          ),
                        ),

                        ///--------------------

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          child: Column(children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Already have an account? ",
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
                                      "Login",
                                      style: TextStyle(
                                          color: appcolor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
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
