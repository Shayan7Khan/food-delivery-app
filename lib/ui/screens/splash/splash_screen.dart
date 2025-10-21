import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/ui/screens/onboarding/onboarding_screen.dart';
import 'package:food_delivery_app/core/utils/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFF4B3A),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 80.h,
                backgroundColor: Color(0xFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/Logo.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              ),
            ),
            20.verticalSpace,
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Foodify\n',
                    style: AppTextStyles.heading.copyWith(
                      color: const Color(0xFFFFFFFF),
                      fontSize: 60.h,
                    ),
                  ),
                  TextSpan(
                    text: 'where cravings meet comfort',
                    style: AppTextStyles.subheading.copyWith(
                      color: const Color(0xFFFFFFFF),
                      fontSize: 20.h,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
