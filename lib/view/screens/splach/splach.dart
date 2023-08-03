import 'dart:async';

import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../login/login.dart';

class Splach extends StatefulWidget {
  const Splach({super.key});

  @override
  State<Splach> createState() => _SplachState();
}

class _SplachState extends State<Splach> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => LogIn())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // Adjust the height as needed
          color: appcolor, // Container background color
          child: Container(
            margin: EdgeInsets.symmetric(vertical: marginLR),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asserts/icons/icon.png',
                  width: 220,
                  height: 220,
                ),
                Text(
                  "Complaint Management System",
                  style: TextStyle(
                      color: dfColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "DHA Islamabad",
                  style: TextStyle(
                    color: dfColor,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
