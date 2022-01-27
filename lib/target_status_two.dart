// ignore_for_file: prefer_const_literals_to_create_immutables, unnecessary_const, prefer_const_constructors, unnecessary_string_interpolations, sized_box_for_whitespace

import 'dart:html';

import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TargetStatus2 extends StatefulWidget {
  const TargetStatus2({Key? key}) : super(key: key);

  @override
  _TargetStatus2State createState() => _TargetStatus2State();
}

class _TargetStatus2State extends State<TargetStatus2> {
  late DateTime date;
  List titleText = [
    'B N General Store',
    'Lavender Super Store',
    'Lavender Super Store'
  ];
  List subtitleText = [
    'Route - 27 no. Road, Dhanmondi, Zigatola',
    'Route - 27 no. Road, Dhanmondi, Zigatola',
    'Route - 27 no. Road, Dhanmondi, Zigatola'
  ];

  //print(date);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    date = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                backgroundImage: AssetImage(
              "assets/topright.jpg",
            )),
          ))
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your target status",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                      width: 100,
                      child: Row(
                        children: [
                          Icon(CommunityMaterialIcons.clock_time_four_outline,
                              size: 12, color: Colors.black.withOpacity(0.7)),
                          SizedBox(width: 5),
                          Text("${DateFormat('dd-MMM-yyyy').format(date)}",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(0.7)))
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white.withOpacity(0.2),
                  ),
                  CircularPercentIndicator(
                    startAngle: 180,
                    radius: 50.0,
                    lineWidth: 10.0,
                    percent: 0.8,
                    animation: true,
                    animationDuration: 1200,
                    center: Column(
                      children: [
                        SizedBox(height: 20),
                        Text(
                          "80%",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        Text("Achievement", style: TextStyle(fontSize: 12))
                      ],
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: Colors.black.withOpacity(0.2),
                    progressColor: Color(0xFF81C784),
                  ),
                ]),
                Column(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircleAvatar(
                            backgroundColor: Colors.green, radius: 5),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Achievement",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.green)),
                            SizedBox(
                              height: 3,
                            ),
                            Text("৳ 1,00,0000",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600))
                          ])
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircleAvatar(
                            backgroundColor: Colors.blue, radius: 5),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Target",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.blue)),
                            SizedBox(
                              height: 3,
                            ),
                            Text("৳ 1,20,0000",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600))
                          ])
                    ],
                  )
                ])
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: DefaultTabController(
                  length: 4,
                  child: Container(
                    height: 50,
                    child: TabBar(
                        indicator: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        tabs: [
                          Container(
                            height: 100,
                            child: Column(children: [
                              Icon(CommunityMaterialIcons.wallet,
                                  color: Colors.purple[300]),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Value",
                                  style: TextStyle(
                                      color: Colors.purple[300], fontSize: 9))
                            ]),
                          ),
                          Container(
                            height: 100,
                            child: Column(children: [
                              Icon(CommunityMaterialIcons.state_machine,
                                  color: Colors.blue[300]),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Strike rate",
                                  style: TextStyle(
                                      color: Colors.blue[300], fontSize: 9))
                            ]),
                          ),
                          Container(
                            height: 100,
                            child: Column(children: [
                              Icon(CommunityMaterialIcons.notebook,
                                  color: Colors.brown[300]),
                              SizedBox(
                                height: 5,
                              ),
                              Text("BCP",
                                  style: TextStyle(
                                      color: Colors.brown[300], fontSize: 9))
                            ]),
                          ),
                          Container(
                            height: 100,
                            child: Column(children: [
                              Icon(CommunityMaterialIcons.gift,
                                  color: Colors.amber[300]),
                              SizedBox(
                                height: 5,
                              ),
                              Text("LPC",
                                  style: TextStyle(
                                      color: Colors.amber[300], fontSize: 9))
                            ]),
                          ),
                        ]),
                  )),
            ),
            Container(
              height: 90,
              width: MediaQuery.of(context).size.width * 0.95,
              color: Colors.black.withOpacity(0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Achievement",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700)),
                  ),
                  LinearPercentIndicator(
                      percent: 0.8,
                      backgroundColor: Colors.red,
                      progressColor: Colors.blue),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 30,
                    child: Text(
                      "80%",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.end,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              color: Colors.black.withOpacity(0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Today's activity ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700)),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: 120,
                            width: 100,
                            color: Colors.green.withOpacity(0.2),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    CommunityMaterialIcons.notebook_check,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    "Today's PJP",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text("20",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green))
                                ])),
                        Container(
                            height: 120,
                            width: 100,
                            color: Colors.amber.withOpacity(0.2),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.notes,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    "Order taken",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text("222",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.amber))
                                ])),
                        Container(
                            height: 120,
                            width: 100,
                            color: Colors.pinkAccent.withOpacity(0.2),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.money,
                                    color: Colors.pinkAccent,
                                  ),
                                  Text(
                                    "Amount",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text("20000 TK",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.pinkAccent))
                                ]))
                      ]),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              color: Colors.black.withOpacity(0.02),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Today's Attendance",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700)),
                    ),
                    Center(
                      child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Colors.blue.withOpacity(0.2)),
                            onPressed: () {},
                            child: Text("Attendance",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.blue[600]))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.95,
                color: Colors.black.withOpacity(0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("My route list",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                    ),
                    for (int i = 0; i < 3; i++)
                      Column(
                        children: [
                          ListTile(
                            enabled: true,
                            onTap: () {},
                            tileColor: Colors.white,
                            title: Text(titleText[i]),
                            subtitle: Text(subtitleText[i]),
                            trailing: Image.asset(
                              'assets/gphotos.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          )
                        ],
                      ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      )),
    );
  }
}
