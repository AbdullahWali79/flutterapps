import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:new_xylophone_app/Input_page.dart';
import 'package:new_xylophone_app/custom_xylophone.dart';

class colorpicker extends StatefulWidget {
  const colorpicker({Key? key,required this.num}) : super(key: key);
  final int num;

  @override
  _colorpickerState createState() => _colorpickerState();
}

class _colorpickerState extends State<colorpicker> {


  List dvalue = ['1','2','3','4','5','6','7'];
  //List<String> lvalue = ['1','2','3','4','5','6','7','8'];
  List<String> lvalue1 = ['1','2','3','4','5','6','7'];



  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);
  List<Color>pc=[Colors.green,Colors.red,Colors.greenAccent,Colors.redAccent,Colors.deepPurpleAccent,Colors.pinkAccent,Colors.lightBlueAccent,Colors.brown,Colors.indigoAccent,Colors.teal,Colors.indigoAccent];
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }
   Future showPicker(int a) {
    return showDialog(
      builder: (context) => AlertDialog(
        title: const Text('Pick a color!'),
        content: SingleChildScrollView(
          child: ColorPicker(
            enableAlpha: false,
            showLabel: false,
            pickerColor: pickerColor,
            onColorChanged: changeColor,
          ),
        ),
        actions: <Widget>[
          ElevatedButton(
            child: const Text('Got it'),
            onPressed: () {
              setState(() => pc[a] = pickerColor);
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      context: context,
    );
  }


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
                  Colors.blue,
                  Colors.red,
                ],
              )
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Text("Change Theme",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
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
              Row(
                children: [
                  Container(
                    height: 450,
                    width: 350,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          for(int i=0;i<widget.num;i++)
                            customNote(i),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(35), bottomLeft: Radius.circular(35), topLeft: Radius.circular(35),bottomRight: Radius.circular(35)),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.cyanAccent,
                          Colors.indigo,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomXylophone(num: widget.num,color: pc,sound: dvalue,)));
                      },
                      child: Text("Play",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget customNote(int i){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              showPicker(i);
            },
              child: CircleAvatar(radius: 30,
                backgroundColor: pc[i],
              )
          ),
           SizedBox(width: 50,),
           Expanded(
             child: DropdownButton<String>(
               value: dvalue[i],
               isExpanded: true,
               iconSize: 35,
               icon: Icon(Icons.arrow_drop_down,color: Colors.indigo), style: TextStyle(color: Colors.black,fontSize: 20,),
               items: lvalue1.map((String TValue){
                 return DropdownMenuItem<String>(
                   value: TValue,
                   child: Text(TValue,
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
                   dvalue[i] = newValue!;
                 });
                 },
             ),
           ),
        ],
      ),
    );
  }
}



