import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';

class CustomXylophone extends StatefulWidget {
  const CustomXylophone({Key? key,required this.num,required this.color,required this.sound}) : super(key: key);
final int num;
final List<Color> color;
final List sound;
  @override
  _CustomXylophoneState createState() => _CustomXylophoneState();
}

class _CustomXylophoneState extends State<CustomXylophone> {
  List alphbet=['Apple','Banana','Cat','Dog','Egg','Flag','Goat','Hen','Ice',];
  List imageUrl=['assets/image.png','','','','','',''];

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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),topRight: Radius.circular(30)),
          ),
        ),
        onPressed: () {
          playSound(num);
        },
        child: Text(T,
          style: TextStyle(
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
                  Colors.brown,
                  Colors.lightGreenAccent,
                ],
              )
          ),
        ),
        title: Text("Xylophnoe",
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
        decoration: BoxDecoration(
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
            for(int i=0;i<widget.num;i++)
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width-20,
                child: CButton(widget.color[i],alphbet[i],int.parse(widget.sound[i])),
              ),
            ),

          ],
        ),
      ),
    );
  }
}