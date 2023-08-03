import 'package:dha_resident_app/constant.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: Platform.isAndroid
          ? EdgeInsets.symmetric(vertical: 20.0)
          : EdgeInsets.symmetric(vertical: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 50.0,
                  child: Image.asset("asserts/icons/icon.png"),
                ),
                SizedBox(height: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CID:345664677845",
                      style: TextStyle(
                          color: drakGreyColor, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Name: Developer-2 Test",
                      style: TextStyle(
                          color: drakGreyColor, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "User-Dont Call",
                      style: TextStyle(
                          color: drakGreyColor, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    color: greyColor,
                    thickness: 0,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      "asserts/images/01.png",
                      color: dfColor,
                      width: dfIconSize,
                    ),
                    title: const Text(
                      "Home",
                      style: TextStyle(
                          color: dfColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    textColor: dfColor,
                    dense: true,
                  ),
                  Divider(
                    color: greyColor,
                    thickness: 0,
                  ),
                  Text(
                    "SOS",
                    style: TextStyle(
                        color: drakGreyColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      "asserts/images/02.png",
                      color: dfColor,
                      width: dfIconSize,
                    ),
                    title: const Text(
                      "SOS History",
                      style: TextStyle(
                          fontSize: dfFontSize, fontWeight: FontWeight.w500),
                    ),
                    textColor: dfColor,
                    dense: true,
                  ),
                  Divider(
                    color: greyColor,
                    thickness: 0,
                  ),
                  Text(
                    "Official Contacts",
                    style: TextStyle(
                        color: drakGreyColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      "asserts/images/contact.png",
                      color: dfColor,
                      width: dfIconSize,
                    ),
                    title: const Text(
                      "Official Contacts",
                      style: TextStyle(
                          fontSize: dfFontSize, fontWeight: FontWeight.w500),
                    ),
                    textColor: Colors.white,
                    dense: true,

                    // padding: EdgeInsets.zero,
                  ),
                  Divider(
                    color: greyColor,
                    thickness: 0,
                  ),
                  Text(
                    "Complaint",
                    style: TextStyle(
                        color: drakGreyColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      "asserts/images/complaint1.png",
                      color: dfColor,
                      width: dfIconSize,
                    ),
                    title: const Text(
                      "New Complaint",
                      style: TextStyle(
                          fontSize: dfFontSize, fontWeight: FontWeight.w500),
                    ),
                    textColor: dfColor,
                    dense: true,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      "asserts/images/04.png",
                      color: dfColor,
                      width: dfIconSize,
                    ),
                    title: const Text(
                      "Track Complaint",
                      style: TextStyle(
                          fontSize: dfFontSize, fontWeight: FontWeight.w500),
                    ),
                    textColor: dfColor,
                    dense: true,
                  ),
                  Divider(
                    color: greyColor,
                    thickness: 0,
                  ),
                  Text(
                    "Staff",
                    style: TextStyle(
                        color: drakGreyColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      "asserts/images/05.png",
                      color: dfColor,
                      width: dfIconSize,
                    ),
                    title: const Text(
                      "Add Staff",
                      style: TextStyle(
                          fontSize: dfFontSize, fontWeight: FontWeight.w500),
                    ),
                    textColor: dfColor,
                    dense: true,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      "asserts/images/06.png",
                      color: dfColor,
                      width: dfIconSize,
                    ),
                    title: const Text(
                      "Manage Staff",
                      style: TextStyle(
                          fontSize: dfFontSize, fontWeight: FontWeight.w500),
                    ),
                    textColor: dfColor,
                    dense: true,
                  ),
                  Divider(
                    color: greyColor,
                    thickness: 0,
                  ),
                  Text(
                    "Pet",
                    style: TextStyle(
                        color: drakGreyColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      "asserts/images/07.png",
                      color: dfColor,
                      width: dfIconSize,
                    ),
                    title: const Text(
                      "Add Pet",
                      style: TextStyle(
                          fontSize: dfFontSize, fontWeight: FontWeight.w500),
                    ),
                    textColor: dfColor,
                    dense: true,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      "asserts/images/08.png",
                      color: dfColor,
                      width: dfIconSize,
                    ),
                    title: const Text(
                      "Manage Pet",
                      style: TextStyle(
                          fontSize: dfFontSize, fontWeight: FontWeight.w500),
                    ),
                    textColor: dfColor,
                    dense: true,
                  ),
                  Divider(
                    color: greyColor,
                    thickness: 0,
                  ),
                  Text(
                    "Others",
                    style: TextStyle(
                        color: drakGreyColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      "asserts/images/09.png",
                      color: dfColor,
                      width: dfIconSize,
                    ),
                    title: const Text(
                      "Mosque Timings",
                      style: TextStyle(
                          fontSize: dfFontSize, fontWeight: FontWeight.w500),
                    ),
                    textColor: dfColor,
                    dense: true,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      "asserts/images/10.png",
                      color: dfColor,
                      width: dfIconSize,
                    ),
                    title: const Text(
                      "Announcements",
                      style: TextStyle(
                          fontSize: dfFontSize, fontWeight: FontWeight.w500),
                    ),
                    textColor: dfColor,
                    dense: true,
                  ),
                  Divider(
                    color: greyColor,
                    thickness: 0,
                  ),
                  Text(
                    "Website",
                    style: TextStyle(
                        color: drakGreyColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      "asserts/images/11.png",
                      color: dfColor,
                      width: dfIconSize,
                    ),
                    title: const Text(
                      "Visit DHAI-R Website",
                      style: TextStyle(
                          fontSize: dfFontSize, fontWeight: FontWeight.w500),
                    ),
                    textColor: dfColor,
                    dense: true,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      "asserts/images/12.png",
                      color: dfColor,
                      width: dfIconSize,
                    ),
                    title: const Text(
                      "View/Pay Utility Bill",
                      style: TextStyle(
                          fontSize: dfFontSize, fontWeight: FontWeight.w500),
                    ),
                    textColor: dfColor,
                    dense: true,
                  ),
                  Divider(
                    color: greyColor,
                    thickness: 0,
                  ),
                  Text(
                    "Change Password",
                    style: TextStyle(
                        color: drakGreyColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      "asserts/images/13.png",
                      color: dfColor,
                      width: dfIconSize,
                    ),
                    title: const Text(
                      "Change Password",
                      style: TextStyle(
                          fontSize: dfFontSize, fontWeight: FontWeight.w500),
                    ),
                    textColor: dfColor,
                    dense: true,
                  ),
                  Divider(
                    color: greyColor,
                    thickness: 0,
                  ),
                  Text(
                    "Logout",
                    style: TextStyle(
                        color: drakGreyColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.logout,
                      size: dfIconSize,
                      color: greyColor,
                    ),
                    title: const Text(
                      "Logout",
                      style: TextStyle(
                          fontSize: dfFontSize, fontWeight: FontWeight.w700),
                    ),
                    textColor: dfColor,
                    dense: true,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
