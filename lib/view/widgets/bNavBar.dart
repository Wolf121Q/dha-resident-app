import 'package:flutter/material.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

import '../../constant.dart';
import '../screens/dashboard/screens/complaint.dart';
import '../screens/dashboard/screens/dashboard.dart';
import '../screens/dashboard/screens/news.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with TickerProviderStateMixin {
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();

    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MotionTabBar(
        labels: ["Dashboard", "Complaint", "News"],
        icons: [Icons.dashboard_outlined, Icons.error_outline, Icons.newspaper],
        initialSelectedTab: "Dashboard",
        tabBarColor: appcolor,
        tabIconColor: dfColor,
        tabSelectedColor: dfColor,
        tabIconSelectedColor: appcolor,
        tabIconSize: 40,
        tabSize: 50,
        tabIconSelectedSize: 40,
        textStyle: TextStyle(
          color: dfColor,
        ),
        controller: _motionTabBarController,
        onTabItemSelected: (int val) {
          setState(() {
            _motionTabBarController!.index = val;
          });
        },
      ),
      body: TabBarView(
        controller: _motionTabBarController,
        physics:
            const NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
        children: [
          Dashboard(),
          Complaint(),
          News(),
        ],
      ),
    );
  }
}
