import 'package:flutter/material.dart';
import '../../../../constant.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    double scWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: marginLR, right: marginLR, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Hello, ",
                style: TextStyle(
                    fontSize: 45, fontWeight: FontWeight.w500, color: appcolor),
              ),
              Text(
                "Faheem",
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: lightappcolor),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Consumer ID: ",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: lightappcolor),
              ),
              Text(
                "32467574569656",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: lightappcolor),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "FEATURES",
              style: TextStyle(
                  fontSize: 35, fontWeight: FontWeight.w500, color: blackColor),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 0,
            ),
            decoration: BoxDecoration(
                color: appcolor,
                gradient: lgBlue,
                borderRadius: BorderRadius.circular(35)),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: dfElevation,
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: scWidth,
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Read",
                          style: TextStyle(
                            fontSize: 45,
                            height: 1,
                            fontWeight: FontWeight.bold,
                            color: dfColor,
                          ),
                        ),
                        Text(
                          "Inproper Use Policy",
                          style: TextStyle(
                              fontSize: 20,
                              height: 1,
                              fontWeight: FontWeight.w300,
                              color: dfColor),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -1,
                    top: -60,
                    child: CircleAvatar(
                        backgroundColor: greyColor,
                        radius: 80.0,
                        child: Image.asset(
                          "asserts/images/read.png",
                          fit: BoxFit.cover,
                        )),
                  )
                ],
              ),
            ),
          ),

          ///////////////////////

          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: Row(
              children: [
                Container(
                  width: scWidth / 2.2,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15)),
                  child: ElevatedButton(
                    onPressed: null,
                    onLongPress: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: dfElevation,
                      backgroundColor: dfColor,
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(top: 50, bottom: 10),
                            child: Text(
                              "PANIC",
                              style: TextStyle(
                                  fontSize: lgFontSize,
                                  // height: 1,
                                  fontWeight: FontWeight.w400,
                                  color: blackColor),
                            ),
                          ),
                          Positioned(
                            top: 3,
                            left: 3,
                            child: Text("0"),
                          ),
                          Positioned(
                            top: -20,
                            // left: 60,
                            child: CircleAvatar(
                              backgroundColor: lightappcolor,
                              radius: 30.0,
                              child: Image.asset(
                                "asserts/images/policeman.png",
                                width: 40,
                              ),
                            ),
                          )
                        ]),
                  ),
                ),
                Spacer(),
                Container(
                  width: scWidth / 2.2,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: ElevatedButton(
                    onPressed: null,
                    onLongPress: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: dfElevation,
                      backgroundColor: dfColor,
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(top: 50, bottom: 10),
                            child: Text(
                              "FIRE",
                              style: TextStyle(
                                  fontSize: lgFontSize,
                                  // height: 1,
                                  fontWeight: FontWeight.w400,
                                  color: blackColor),
                            ),
                          ),
                          Positioned(
                            top: 3,
                            left: 3,
                            child: Text("0"),
                          ),
                          Positioned(
                            top: -20,
                            // left: 60,
                            child: CircleAvatar(
                              backgroundColor: redAlert,
                              radius: 30.0,
                              child: Image.asset(
                                "asserts/images/flame.png",
                                width: 40,
                              ),
                            ),
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: scWidth,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: dfElevation,
                backgroundColor: dfColor,
                padding: EdgeInsets.symmetric(horizontal: 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 50, bottom: 10),
                      child: Text(
                        "COMPLAINT",
                        style: TextStyle(
                            fontSize: lgFontSize,
                            // height: 1,
                            fontWeight: FontWeight.w400,
                            color: blackColor),
                      ),
                    ),
                    Positioned(
                      top: 3,
                      left: 3,
                      child: Text("0"),
                    ),
                    Positioned(
                      top: -20,
                      // left: 60,
                      child: CircleAvatar(
                        backgroundColor: yellowAlert,
                        radius: 30.0,
                        child: Image.asset(
                          "asserts/images/alert.png",
                          width: 40,
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
