import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/ui/screens/home/home_page.dart';
import 'package:food_delivery_app/core/utils/theme.dart';
import 'package:food_delivery_app/ui/widgets/custom_elevated_button.dart';
import 'package:food_delivery_app/ui/widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool tabSelected = true;
  bool isLoginSelected = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF2F2F2),
        body: Column(
          children: [
            Container(
              height: 250.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(60.r, 25.r),
                  bottomRight: Radius.elliptical(60.r, 25.r),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Logo.png', height: 170.h),
                  30.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Login
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLoginSelected = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "Login",
                              style: AppTextStyles.subheading.copyWith(
                                color: isLoginSelected
                                    ? Colors.black
                                    : Colors.grey,
                                fontWeight: isLoginSelected
                                    ? FontWeight.w600
                                    : FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 6.h),
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 100),
                              curve: Curves.easeInOut,
                              width: 55.w,
                              height: 3.h,
                              decoration: BoxDecoration(
                                color: isLoginSelected
                                    ? const Color(0xFFFF470B)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(2.r),
                              ),
                            ),
                          ],
                        ),
                      ),
                      100.horizontalSpace,
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLoginSelected = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "Sign-up",
                              style: AppTextStyles.subheading.copyWith(
                                color: !isLoginSelected
                                    ? Colors.black
                                    : Colors.grey,
                                fontWeight: !isLoginSelected
                                    ? FontWeight.w600
                                    : FontWeight.w500,
                              ),
                            ),
                            6.verticalSpace,
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeInOut,
                              width: 55.w,
                              height: 3.h,
                              decoration: BoxDecoration(
                                color: !isLoginSelected
                                    ? const Color(0xFFFF470B)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(2.r),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 40.w),
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: isLoginSelected
                        ? Column(
                            children: [
                              CustomTextFormField(
                                labelText: 'Email Address',
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  } else if (!RegExp(
                                    r'^[^@]+@[^@]+\.[^@]+',
                                  ).hasMatch(value)) {
                                    return 'Please enter a valid email address';
                                  }
                                  return null;
                                },
                              ),
                              30.verticalSpace,
                              CustomTextFormField(
                                labelText: 'Password',
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your password';
                                  } else if (value.length < 6) {
                                    return 'Password must be at least 6 characters long';
                                  }
                                  return null;
                                },
                              ),
                              25.verticalSpace,
                              Align(
                                alignment: AlignmentGeometry.topLeft,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    'Forgot Password?',
                                    style: AppTextStyles.subheading.copyWith(
                                      fontSize: 13.h,
                                      color: Color(0xFFFA4A0C),
                                    ),
                                  ),
                                ),
                              ),
                              80.verticalSpace,
                              CustomElevatedButton(
                                backgroundcolor: Color(0xFFFA4A0C),
                                foregroundColorcolor: Color(0xFFF6F6F9),
                                label: 'Login',
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomePage(),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              CustomTextFormField(
                                labelText: 'Email Address',
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  } else if (!RegExp(
                                    r'^[^@]+@[^@]+\.[^@]+',
                                  ).hasMatch(value)) {
                                    return 'Please enter a valid email address';
                                  }
                                  return null;
                                },
                              ),
                              30.verticalSpace,
                              CustomTextFormField(
                                labelText: 'Password',
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your password';
                                  } else if (value.length < 6) {
                                    return 'Password must be at least 6 characters long';
                                  }
                                  return null;
                                },
                              ),

                              30.verticalSpace,
                              CustomTextFormField(
                                labelText: 'Confirm Password',
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your password';
                                  } else if (value.length < 6) {
                                    return 'Password must be at least 6 characters long';
                                  }
                                  return null;
                                },
                              ),
                              50.verticalSpace,
                              CustomElevatedButton(
                                backgroundcolor: Color(0xFFFA4A0C),
                                foregroundColorcolor: Color(0xFFF6F6F9),
                                label: 'Sign Up',
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomePage(),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ],
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
