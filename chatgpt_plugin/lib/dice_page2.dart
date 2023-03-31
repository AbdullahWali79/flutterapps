import 'package:flutter/material.dart';
import 'dart:math';

class dice_2 extends StatefulWidget {
  const dice_2({Key? key}) : super(key: key);

  @override
  _dice_2State createState() => _dice_2State();
}

class _dice_2State extends State<dice_2> with SingleTickerProviderStateMixin{
  int a=1;
  int b=1;
  int tvalue=0;
  late AnimationController _controller;
  late CurvedAnimation animation;
  @override
  void initState() {
    super.initState();
    animate();
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }






  animate(){
    _controller= AnimationController(duration: Duration(seconds: 1),vsync: this);
    animation= CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);
    animation.addListener(() {setState(() {

    });print(_controller.value);});
    animation.addStatusListener((status) {if(status==AnimationStatus.completed){
      setState(() {
        a=Random().nextInt(6)+1;
        b=Random().nextInt(6)+1;
        tvalue=tvalue+a+b;
      });
      print("complete");
      _controller.reverse();
    }
    });

  }


  void roll(){
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
        backgroundColor: Colors.teal,
        elevation: 10,
        shadowColor: Colors.teal,
      ),
      body: Column(
        children: [
          SizedBox(
             height: 10,
          ),
          Container(
            height: 250,
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image(height: 100-(animation.value)*100,
                      image: AssetImage('images/dice$a.png',)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image(height: 100-(animation.value)*100,
                      image: AssetImage('images/dice$b.png',)
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 180,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Total: ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Chip(label: Text("$tvalue",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                backgroundColor: Colors.teal,
              ),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              elevation: 10,
              shadowColor: Colors.teal,
              padding: EdgeInsets.symmetric(
                horizontal: 140,
                vertical: 13,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
            onPressed: roll,
            child: Text("Roll",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),),

          ),
        ],
      ),
    );
  }
}
