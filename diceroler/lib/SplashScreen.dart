import 'dart:math';
import 'package:chatgpt_plugin/home_page.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        logo: Image(image: AssetImage('images/image3.png'),width: 200,height: 200,),
        navigator: Home(),
        durationInSeconds: 3,
        backgroundColor: Colors.white,
        loadingText: Text('Loading...',style: TextStyle(
            fontSize: 20
        ),),

      ),
    );
  }
}