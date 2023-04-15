import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        logo: const Image(image: AssetImage('assets/image.png'),),
        navigator: const Home(),
        durationInSeconds: 3,
        gradientBackground: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.tealAccent,
            Colors.blue,
          ],
        ),
        loadingText: const Text('Loading...',style: TextStyle(
          fontSize: 20
        ),),

      ),
    );
  }
}
