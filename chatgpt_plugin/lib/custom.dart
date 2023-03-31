import 'package:chatgpt_plugin/dice_page1.dart';
import 'package:chatgpt_plugin/dice_page2.dart';
import 'package:chatgpt_plugin/dice_page3.dart';
import 'package:chatgpt_plugin/dice_page4.dart';
import 'package:chatgpt_plugin/dice_page5.dart';
import 'package:chatgpt_plugin/dice_page6.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class custom extends StatefulWidget {
  const custom({Key? key}) : super(key: key);

  @override
  _customState createState() => _customState();
}

class _customState extends State<custom> {
  final _textcontroller= TextEditingController();
  String usernum='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.teal,
        elevation: 10,
        shadowColor: Colors.teal,),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("Your dice number is:",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    ),
                    Chip(label: Text("$usernum",
                      style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            TextField(
              controller: _textcontroller,
              decoration: InputDecoration(
                hintText: 'Enter a number of dice 1 to 6.',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: (){
                      _textcontroller.clear();
                    },
                    icon: Icon(Icons.clear),

                ),

              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              onPressed: (){
                setState(() {
                  usernum=_textcontroller.text;
                });
              },
              child: Text("Post",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),),

            ),
            SizedBox(
            height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                elevation: 10,
                shadowColor: Colors.teal,
                padding: EdgeInsets.symmetric(
                  horizontal: 130,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
              onPressed: (){
                if(usernum=='1'){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>dice_1()));
                }
                if(usernum=='2'){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>dice_2()));
                }
                if(usernum=='3'){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>dice_3()));
                }
                if(usernum=='4'){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>dice_4()));
                }
                if(usernum=='5'){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>dice_5()));
                }
                if(usernum=='6'){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>dice_6()));
                }
              },
              child: Text("Play",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),),

            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
