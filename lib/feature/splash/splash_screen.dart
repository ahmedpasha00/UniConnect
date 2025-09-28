import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:uni_connect/feature/onboarding/onboarding.dart';
import 'package:uni_connect/feature/welcom/presentation/ui/welcom.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onboarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 123, 195, 236),
                  Color.fromARGB(255, 9, 58, 99),
                ],
              ),
            ),
          ),
          Positioned(
            top: 70.h,
            right: 190.w,
            child: Image.asset("assets/images/cap2.png"),
          ),
          Center(child: Lottie.asset("assets/lottie/lsnCJOvVgt.json")),
          Positioned(
            bottom: 170.h,
            child: Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'UniConnect',
                    textStyle: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 12, 99, 170),
                    ),
                    colors: [
                      Colors.blue,
                      Colors.red,
                      Colors.yellow,
                      Colors.blue,
                      Colors.green,
                      Colors.purple,
                    ],
                  ),
                ],

                repeatForever: true, // يفضل يكرر بلا نهاية
              ),
            ),
          ),
          Positioned(
            bottom: 540.h,
            child: Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText(
                    'UniConnect',
                    textStyle: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    // colors: [
                    //   Colors.blue,
                    //   Colors.red,
                    //   Colors.yellow,
                    //   Colors.blue,
                    //   Colors.green,
                    //   Colors.purple,
                    // ],
                  ),
                ],

                repeatForever: true, // يفضل يكرر بلا نهاية
              ),
            ),
          ),
        ],
      ),
    );
  }
}
