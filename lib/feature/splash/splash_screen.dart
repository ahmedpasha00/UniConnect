import 'package:flutter/material.dart';
import 'package:uni_connect/feature/welcom/presentation/ui/welcom.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Welcom()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
