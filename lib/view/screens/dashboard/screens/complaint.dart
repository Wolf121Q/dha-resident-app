import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../../../constant.dart';

class Complaint extends StatefulWidget {
  const Complaint({super.key});

  @override
  State<Complaint> createState() => _ComplaintState();
}

class _ComplaintState extends State<Complaint> {
  @override
  final colorList = <Color>[
    Colors.brown,
  ];
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      "Submitted": 5,
      "In Process": 3,
      "Resolved": 2,
      "Closed": 2,
      "Cancled": 8,
    };

    double scWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: marginLR, right: marginLR, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Complaints, ",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: dfGreyColor),
                ),
                Text(
                  "Statistics",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                ),
              ],
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 15, top: 15),
              child: Text(
                // textAlign: TextAlign.center,
                "Total Complaints:123",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: lgFontSize,
                    fontWeight: FontWeight.w500,
                    color: dfGreyColor),
              ),
            ),

            ////////////////////////////////pei chart ///////////////////////////////////

            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: PieChart(
                dataMap: dataMap,
                animationDuration: Duration(milliseconds: 800),
                chartLegendSpacing: 30,
                chartRadius: MediaQuery.of(context).size.width / 2.2,
                //   colorList: colorList,
                initialAngleInDegree: 220,
                chartType: ChartType.ring,
                ringStrokeWidth: 45,
                //   centerText: "Complaint",
                legendOptions: LegendOptions(
                  showLegendsInRow: true,
                  legendPosition: LegendPosition.bottom,
                  showLegends: true,
                  //  legendShape: _BoxShape.circle,
                  legendTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                chartValuesOptions: ChartValuesOptions(
                  showChartValueBackground: true,
                  showChartValues: false,
                  showChartValuesInPercentage: false,
                  showChartValuesOutside: true,
                  decimalPlaces: 1,
                ),
                // gradientList: ---To add gradient colors---
                // emptyColorGradient: ---Empty Color gradient---
              ),
            ),

            ///////////////////////

            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  Container(
                    width: scWidth / 3.5,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15)),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 8,
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
                              padding: EdgeInsets.only(top: 60, bottom: 20),
                              child: Text(
                                "New \nComplaint",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: smFontSize,
                                    // height: 1,
                                    fontWeight: FontWeight.w400,
                                    color: blackColor),
                              ),
                            ),
                            Positioned(
                              top: -20,
                              // left: 60,
                              child: CircleAvatar(
                                  backgroundColor: redAlert,
                                  radius: 30.0,
                                  child: Image.asset(
                                    "asserts/images/newcomplaint.png",
                                    width: 30,
                                  )),
                            )
                          ]),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: scWidth / 3.5,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 8,
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
                              padding: EdgeInsets.only(top: 60, bottom: 20),
                              child: Text(
                                "Track \nComplaint",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: smFontSize,
                                    // height: 1,
                                    fontWeight: FontWeight.w400,
                                    color: blackColor),
                              ),
                            ),
                            Positioned(
                              top: -20,
                              // left: 60,
                              child: CircleAvatar(
                                backgroundColor: redAlert,
                                radius: 30.0,
                                child: Container(
                                    child: Image.asset(
                                  "asserts/images/trackcomplaint.png",
                                  width: 30,
                                )),
                              ),
                            )
                          ]),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: scWidth / 3.5,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 8,
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
                              padding: EdgeInsets.only(top: 60, bottom: 20),
                              child: Text(
                                "More \nFeatures",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: smFontSize,
                                    // height: 1,
                                    fontWeight: FontWeight.w400,
                                    color: blackColor),
                              ),
                            ),
                            Positioned(
                              top: -20,
                              // left: 60,
                              child: CircleAvatar(
                                backgroundColor: yellowAlert,
                                radius: 30.0,
                                child: Container(
                                    child: Image.asset(
                                  "asserts/images/morefeatures.png",
                                  width: 30,
                                )),
                              ),
                            )
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
