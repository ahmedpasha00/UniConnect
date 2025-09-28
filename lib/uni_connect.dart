import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uni_connect/feature/splash/splash_screen.dart';

class UniConnect extends StatelessWidget {
  const UniConnect({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        375,
        812,
      ), // مقاس التصميم الأساسي (مثلاً iPhone 12)
      minTextAdapt: true, // النصوص تتأقلم تلقائي
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(fontFamily: "DM Serif Display"),
          debugShowCheckedModeBanner: false,

          title: 'UniConnect',
          home: SplashScreen(),
        );
      },
    );
  }
}
