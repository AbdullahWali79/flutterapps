import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Resumeapp(),
  ));
}

class Resumeapp extends StatelessWidget {
  const Resumeapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 260.0,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                border: Border.all(
                  width: 5,
                  color: Colors.white70,
                ),
              ),
              child: Card(
                margin: EdgeInsets.all(9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.all(15)),
                    CircleAvatar(
                      radius: 100.0,
                      backgroundColor: Colors.amber,
                      child: CircleAvatar(
                        radius: 95.0,
                        backgroundImage: AssetImage('image/myimage.jpg'),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text("Hi! I'm",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text("Muhammad Umair Sabir",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.black54,
                              ),
                            ),
                            child: Text("umairsabir6565@gmail.com"),
                          ),
                          Text("I am a flutter Beginer level developer student. At COMSAT University Islamabad Vehari Campus.",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Chip(label: Text("Graphic Designer",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                            elevation: 10.0,
                            backgroundColor: Colors.teal,
                            shadowColor: Colors.brown,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              margin: EdgeInsets.all(10),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Work Experiences",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                height: 2,
                              ),
                            ),
                            Divider(
                              color: Colors.brown,
                              endIndent: 5,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Icon(
                                    Icons.wallet_travel_rounded,

                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("UI Graphic Designer",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text("Ginyard International Co.-Any City"),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Chip(label: Text("2000-2000",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                        elevation: 10.0,
                                        backgroundColor: Colors.teal,
                                        shadowColor: Colors.brown,
                                      ),
                                    ],
                                  ),
                                ),
                                
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.wallet_travel_rounded,

                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Senior Graphic Designer",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text("Giggling Platypus Co.-Any City"),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Chip(label: Text("2000-2000",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                        elevation: 10.0,
                                        backgroundColor: Colors.teal,
                                        shadowColor: Colors.brown,
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.wallet_travel_rounded,

                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Junior Graphic Designer",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text("Studio Shodwe - Any City"),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Chip(label: Text("2000-2000",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                        elevation: 10.0,
                                        backgroundColor: Colors.teal,
                                        shadowColor: Colors.brown,
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                            Text("Skills",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                height: 2,
                              ),
                            ),
                            Divider(
                              color: Colors.brown,
                              endIndent: 10,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,

                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Flutter Developer",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Chip(label: Text("2023-Present",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                        elevation: 10.0,
                                        backgroundColor: Colors.teal,
                                        shadowColor: Colors.brown,
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,

                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Destop Application Developer",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Chip(label: Text("2023-Present",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                        elevation: 10.0,
                                        backgroundColor: Colors.teal,
                                        shadowColor: Colors.brown,
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,

                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Web Developer",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Chip(label: Text("2023-Present",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                        elevation: 10.0,
                                        backgroundColor: Colors.teal,
                                        shadowColor: Colors.brown,
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                    ),
                    VerticalDivider(
                      color: Colors.indigoAccent,
                      thickness: 5,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Education",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              height: 2,
                              
                            ),
                          ),
                          Divider(
                            color: Colors.brown,
                            endIndent: 20,
                            thickness: 2,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.school_outlined,

                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Matric (Science)",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text("65 W/B Vehari"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Chip(label: Text("2007-2017",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                      elevation: 10.0,
                                      backgroundColor: Colors.teal,
                                      shadowColor: Colors.brown,
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.school_outlined,

                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Intermediate (ICS)",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text("Aspire College Vehari"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Chip(label: Text("2018-2020",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                      elevation: 10.0,
                                      backgroundColor: Colors.teal,
                                      shadowColor: Colors.brown,
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.school_outlined,

                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Bachelor of Computer Science (BCS)",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text("COMSAT University Vehari"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Chip(label: Text("2021-Present",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                      elevation: 10.0,
                                      backgroundColor: Colors.teal,
                                      shadowColor: Colors.brown,
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Hobbies",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              height: 2,

                            ),
                          ),
                          Divider(
                            color: Colors.brown,
                            endIndent: 20,
                            thickness: 2,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.airline_seat_individual_suite_outlined,

                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sleeping",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.add_a_photo_outlined,

                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Photography",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.wifi,

                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Free Wifi",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.local_airport_outlined
                                ,

                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Travelling",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),


                        ],
                      ),
                    ),
                      ],
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}