import 'package:flutter/material.dart';
import 'package:uni_connect/feature/splash/splash_screen.dart';

class UniConnect extends StatelessWidget {
  const UniConnect({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
