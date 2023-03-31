import 'package:flutter/material.dart';
import 'dart:math';

class dice_5 extends StatefulWidget {
  const dice_5({Key? key}) : super(key: key);

  @override
  _dice_5State createState() => _dice_5State();
}

class _dice_5State extends State<dice_5> with SingleTickerProviderStateMixin {
  int a=1;
  int b=1;
  int c=1;
  int d=1;
  int e=1;
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
        c=Random().nextInt(6)+1;
        d=Random().nextInt(6)+1;
        e=Random().nextInt(6)+1;
        tvalue=tvalue+a+b+c+d+e;
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

          ),
        ),
        backgroundColor: Colors.teal,
        elevation: 10,
        shadowColor: Colors.teal,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Container(
            height: 220,
            width: 340,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image(height: 100-(animation.value)*100,
                          image: AssetImage('images/dice$a.png',)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image(height: 100-(animation.value)*100,
                          image: AssetImage('images/dice$b.png',)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image(height: 100-(animation.value)*100,
                          image: AssetImage('images/dice$c.png',)
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image(height: 100-(animation.value)*100,
                          image: AssetImage('images/dice$d.png',)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image(height: 100-(animation.value)*100,
                          image: AssetImage('images/dice$e.png',)
                      ),
                    ),
                  ],
                ),               ],
            ),
          ),
          SizedBox(
            height: 120,
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
              Chip(
                label: Text("$tvalue",
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
            height: 90,
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
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
