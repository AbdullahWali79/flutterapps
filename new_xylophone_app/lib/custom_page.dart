import 'package:flutter/material.dart';
import 'package:new_xylophone_app/Input_page.dart';


class custom extends StatefulWidget {
  const custom({Key? key}) : super(key: key);

  @override
  _customState createState() => _customState();
}

class _customState extends State<custom> {

  String defaultvalue = '1';
  List<String> listitem =['1','2','3','4','5','6','7'];

  final _textcontroller= TextEditingController();
  String usernum='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.cyanAccent,
                  Colors.brown,
                ],
              )
          ),
        ),
        title: Text("Custom",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.tealAccent,
                  Colors.blue,
                ],
              )
          ),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text("Your number of nodes is:",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                      ),
                      Chip(label: Text("$defaultvalue",
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
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: defaultvalue,
                      isExpanded: true,
                      isDense: true,
                      iconSize: 35,
                      icon: Icon(Icons.arrow_drop_down,color: Colors.indigo),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      items: listitem.map((String itemValue){
                        return DropdownMenuItem<String>(
                          value: itemValue,
                          child: Text(itemValue,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (newValue){
                        setState(() {
                          defaultvalue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 130,
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(35), bottomLeft: Radius.circular(35), topLeft: Radius.circular(35),bottomRight: Radius.circular(35)),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.deepOrange,
                      Colors.lightBlueAccent,
                    ],
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(
                      horizontal: 130,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>colorpicker(num: int.parse(defaultvalue),)));
                  },
                  child: Text("Play",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),),
                ),
              ),
              SizedBox(
                height: 110,
              ),
            ],
          ),
        ),
      ),
    );
  }
}