import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/ui/screens/auth/login_and_signup_screen.dart';
import 'package:food_delivery_app/ui/screens/drawer/custom_menu_section.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Header Section
          Container(
            height: 200.h,
            decoration: BoxDecoration(
              color: Color(0xFFFA4A0C),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40.r),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 50.h,
                  left: 20.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30.r,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          size: 35.sp,
                          color: Color(0xFFFA4A0C),
                        ),
                      ),
                      15.verticalSpace,
                      Text(
                        'Jon Doe',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      5.verticalSpace,
                      Text(
                        'JonDoe@example.com',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          30.verticalSpace,

          // Menu Items
          CustomMenuSection(
            title: 'Profile',
            icon: Icons.person_outline,
            onTap: () {},
          ),

          CustomMenuSection(
            title: 'Orders',
            icon: Icons.shopping_bag_outlined,
            onTap: () {},
          ),

          CustomMenuSection(
            title: 'Offer and Promo',
            icon: Icons.local_offer_outlined,
            onTap: () {},
          ),

          CustomMenuSection(
            title: 'Privacy policy',
            icon: Icons.privacy_tip_outlined,
            onTap: () {},
          ),

          CustomMenuSection(
            title: 'Security',
            icon: Icons.security_outlined,
            onTap: () {},
          ),

         25.verticalSpace,

          // Sign Out Section
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Container(height: 1.h, color: Colors.grey[300]),
          ),
          10.verticalSpace,

          CustomMenuSection(
            title: 'Sign-out',
            icon: Icons.logout,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            }, 
            isSignOut: true,
          ),

          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
