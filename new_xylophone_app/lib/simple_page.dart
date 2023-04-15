import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {

  final playerSound = AudioPlayer();

  void playSound(int num) {
    playerSound.play(AssetSource('note$num.wav'));
  }

  CButton(Color colur , String T,int num){
    return  Padding(
      padding: const EdgeInsets.only(right: 20.0, bottom: 4.0, top: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: colur,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),topRight: Radius.circular(30)),
          ),
        ),
        onPressed: () {
          playSound(num);
        },
        child: Text(T,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              fontStyle: FontStyle.italic,
              color: Colors.white
          ),
        ),
      ),
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
                  Colors.tealAccent,
                  Colors.deepOrange,
                ],
              )
          ),
        ),
        title: const Text("Xylophnoe",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width-20,
                child: CButton(Colors.teal,"A",1),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width-80,
                child: CButton(Colors.amber,"B",2),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width-120,
                child: CButton(Colors.orange,"C",3),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width-170,
                child: CButton(Colors.pink,"D",4),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width-120,
                child: CButton(Colors.purpleAccent,"E",5),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width-80,
                child: CButton(Colors.cyan,"F",6),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width-20,
                child: CButton(Colors.greenAccent,"G",7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}