import 'package:dha_resident_app/view/screens/check.dart';
import 'package:dha_resident_app/view/screens/dashboard/bottomNavBar.dart';
import 'package:dha_resident_app/view/screens/login/login.dart';
import 'package:dha_resident_app/view/screens/register_complaint/new_complaint.dart';
import 'package:dha_resident_app/view/screens/signup/signup.dart';
import 'package:dha_resident_app/view/screens/splach/splach.dart';
import 'package:dha_resident_app/view/test_file.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rersident App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: appcolor),
        useMaterial3: true,
      ),
      home: StreamBuilder(builder: (ctx, userSnapShot) {
        if (userSnapShot.connectionState == ConnectionState.waiting) {
          return SignUp();
        }
        return SignUp();
      }),
      // routes: {
      //   BottomNavBar.routeName: (ctx) => BottomNavBar(),
      //   LogIn.routeName: (ctx) => LogIn(),
      // },
    );
  }
}
