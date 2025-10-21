import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/ui/screens/auth/login_and_signup_screen.dart';
import 'package:food_delivery_app/core/utils/theme.dart';
import 'package:food_delivery_app/ui/widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFF4B3A),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 70.h, horizontal: 40.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30.h,
                    backgroundColor: Color(0xFFFFFFFF),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
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
                  15.verticalSpace,
                  Text(
                    "Food For\nEveryone",
                    style: AppTextStyles.heading.copyWith(
                      color: Color(0xFFFFFFFF),
                      fontSize: 50.sp,
                      height: 1.h,
                    ),
                  ),
                  15.verticalSpace,
                ],
              ),
            ),
            SizedBox(
              height: 300.h,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    right: 0.w,
                    bottom: 0.h,
                    child: Image.asset(
                      'assets/images/image_2.png',
                      fit: BoxFit.contain,
                      height: 230.h,
                    ),
                  ),
                  Positioned(
                    left: 2.w,
                    top: 0.h,

                    child: Image.asset(
                      'assets/images/image_1.png',
                      fit: BoxFit.contain,
                      height: 355.h,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 100.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            const Color(0xFFFF4B3A),
                            const Color(0xFFFF4B3A).withOpacity(0.2),
                            const Color(0xFFFF4B3A).withOpacity(0.0),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            25.verticalSpace,

            CustomElevatedButton(
              backgroundcolor: Color(0xFFFFFFFF),
              foregroundColorcolor: Color(0xFFFF460A),
              label: 'Get Started',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
