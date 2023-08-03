import 'package:dha_resident_app/view/screens/dashboard/screens/complaint.dart';
import 'package:dha_resident_app/view/screens/dashboard/screens/dashboard.dart';
import 'package:dha_resident_app/view/screens/dashboard/screens/news.dart';
import 'package:dha_resident_app/view/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

import 'package:shrink_sidemenu/shrink_sidemenu.dart';

import '../../../constant.dart';

class BottomNavBar extends StatefulWidget {
  static const routeName = '/bottomNavBar';
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with TickerProviderStateMixin {
  MotionTabBarController? _motionTabBarController;
  bool isOpened = false;

  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();

  toggleMenu([bool end = false]) {
    if (end) {
      final _state = _endSideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    }
  }

  @override
  void initState() {
    super.initState();

    // toggleMenu(true);
    // _endSideMenuKey.currentState!.isOpened;

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
    return SideMenu(
      key: _endSideMenuKey,
      inverse: true, // end side menu
      background: appcolor,
      type: SideMenuType.shrinkNSlide,
      menu: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: CustomDrawer(),
      ),
      onChange: (_isOpened) {
        setState(() => isOpened = _isOpened);
      },
      child: Scaffold(
        backgroundColor: greyColor,
        appBar: AppBar(
          // primary:true : false,
          centerTitle: true,
          actions: [
            Container(
              margin: EdgeInsets.only(left: marginLR),
              child: CircleAvatar(
                backgroundColor: appcolor,
                radius: 22.0,
                child: IconButton(
                  color: dfColor,
                  icon: Icon(Icons.person),
                  onPressed: () {},
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: CircleAvatar(
                backgroundColor: lightappcolor,
                radius: 22.0,
                child: IconButton(
                  icon: Icon(Icons.question_mark),
                  onPressed: () {},
                ),
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(right: marginSet),
              child: IconButton(
                icon: Image.asset(
                  "asserts/icons/leftmenu.png",
                  width: 35,
                ),
                onPressed: () => toggleMenu(true),
              ),
            )
          ],
          backgroundColor: greyColor,
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
        bottomNavigationBar: MotionTabBar(
          labels: ["Dashboard", "Complaint", "News"],
          icons: [
            Icons.dashboard_outlined,
            Icons.error_outline,
            Icons.newspaper
          ],
          initialSelectedTab: "Dashboard",
          tabBarColor: appcolor,
          tabIconColor: dfColor,
          tabSelectedColor: lightappcolor,
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
      ),
    );
  }
}
