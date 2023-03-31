import 'package:chatgpt_plugin/dice_page1.dart';
import 'package:chatgpt_plugin/dice_page2.dart';
import 'package:chatgpt_plugin/dice_page3.dart';
import 'package:chatgpt_plugin/custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool check1=false;
  bool check2=false;
  bool check3=false;
  bool check4=false;
  bool button=false;
  int bvalue=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text("Choose your dice board",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.black87,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: (){
              setState(() {
                check1=true;
                check2=false;
                check3=false;
                check4=false;
                button=true;
                bvalue=1;
              });

            },
            child: Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20,top: 8,right: 8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        check1?Icon(Icons.check_circle,color: Colors.black,):Icon(null),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("One",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 5,),
                            Text("Suitable for single-player board games",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              height: 10,),
                          ],
                        ),
                        Column(
                          children: [
                            Image(
                              image: AssetImage('images/image1.png'),
                              height: 70,
                              width: 70,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),

            ),
          ),
          InkWell(
            onTap: (){
              setState(() {
                check1=false;
                check2=true;
                check3=false;
                check4=false;
                button=true;
                bvalue=2;
              });

            },
            child: Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 8,right: 8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        check2?Icon(Icons.check_circle,color: Colors.black,):Icon(null),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Two",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 5,),
                            Text("Suitable for Two-player board games",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              height: 10,),
                          ],
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            Image(
                              image: AssetImage('images/image2.png'),
                              height: 70,
                              width: 70,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),

            ),
          ),
          InkWell(
            onTap: (){
              setState(() {
                check1=false;
                check2=false;
                check3=true;
                check4=false;
                button=true;
                bvalue=3;
              });

            },
            child: Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 8,right: 8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        check3?Icon(Icons.check_circle,color: Colors.black,):Icon(null),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Three",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 5,),
                            Text("Suitable for Three-player board games",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              height: 10,),
                          ],
                        ),
                        Column(
                          children: [
                            Image(
                              image: AssetImage('images/image3.png'),
                              height: 70,
                              width: 70,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),

            ),
          ),
          InkWell(
            onTap: (){
              setState(() {
                check1=false;
                check2=false;
                check3=false;
                check4=true;
                button=true;
                bvalue=4;
              });

            },
            child: Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 8,right: 8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        check4?Icon(Icons.check_circle,color: Colors.black,):Icon(null),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Custom",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 5,),
                            Text("Suitable for multi-player board games",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              height: 10,),
                          ],
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            Image(
                              image: AssetImage('images/image5.png'),
                              height: 70,
                              width: 70,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),

            ),
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: EdgeInsets.symmetric(
                    horizontal: 150,
                    vertical: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
                onPressed: button?(){
                  if(bvalue==1){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>dice_1()));
                  }
                  if(bvalue==2){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>dice_2()));
                  }
                  if(bvalue==3){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>dice_3()));
                  }
                  if(bvalue==4){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>custom()));
                  }
                }:null,
                child: Text("Play",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),

              ),
            ],
          ),
        ],
      ),
    );
  }
}


