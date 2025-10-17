import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/auth/login_screen.dart';
import 'package:food_delivery_app/ui/onboarding/onboarding_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/ui/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Food Delivery App',
          home: SplashScreen(),
        );
      },
    );
  }
}
