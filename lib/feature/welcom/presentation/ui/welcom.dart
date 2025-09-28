import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:uni_connect/core/theme/app_colors.dart';
import 'package:uni_connect/core/widgets/coustom_buttom.dart';
import 'package:uni_connect/feature/auth/presentation/ui/login/login_screen.dart';
import 'package:uni_connect/feature/auth/presentation/ui/register/register_screen.dart';

class Welcom extends StatelessWidget {
  const Welcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 130,
                    child: Stack(
                      children: [
                        AnimatedTextKit(
                          animatedTexts: [
                            RotateAnimatedText(
                              'UniConnect',
                              textStyle: TextStyle(
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                                color: AppColors.darkColor,
                              ),
                              // colors: [
                              //   AppColors.primaryColor,
                              //   Colors.blue,
                              //   Colors.purple,
                              //   Colors.red,
                              // ],
                            ),
                          ],
                          repeatForever: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Lottie.asset(
                    'assets/lottie/Login.json',
                    width: double.infinity,
                    height: 250,
                  ),
                  SizedBox(height: 90),

                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: CoustomButtom(titel: 'Login'),
                  ),
                  SizedBox(height: 15),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    child: CoustomButtom(
                      titel: 'Register',
                      backgroundColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 95),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
