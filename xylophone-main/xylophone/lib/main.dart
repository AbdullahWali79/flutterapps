import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const  MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("xylophone ")),
        body: Xylo(),
      )
    );
  }
}
class Xylo extends StatefulWidget {
  const Xylo({Key? key}):super(key:key);

  @override
  State<Xylo> createState() => _XyloState();
}
class _XyloState extends State<Xylo>{
  void playsound(int num)
  {
  AssetsAudioPlayer.newPlayer().open(
    Audio("assets/note$num.wav")
  );
}
Expanded createNewButton(int sound,Color color)
{
  return Expanded(
    child:Container(
    color: Colors.grey,
    child: TextButton(onPressed: ()
    {
      playsound(sound);
    }, 
    child: Text("Button 01")
    ),
  ),
   );
  
}
  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.stretch,
     children: [
     createNewButton(1,Colors.black38),
     createNewButton(2,Colors.brown),
     createNewButton(3,Colors.cyanAccent),
     createNewButton(4,Colors.amberAccent),
     ],
    );
  }
}