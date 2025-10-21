import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMenuSection extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final bool isSignOut;
  const CustomMenuSection({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.isSignOut = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40.w,
        height: 40.h,
        decoration: BoxDecoration(
          color: 
              Color(0xFFFA4A0C).withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Icon(
          icon,
          color:  Color(0xFFFA4A0C),
          size: 20.sp,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: isSignOut ? Colors.red : Colors.black87,
        ),
      ),
      trailing: isSignOut
          ? Icon(Icons.arrow_forward, color: Colors.red, size: 18.sp)
          : Icon(Icons.arrow_forward_ios, color: Colors.grey[400], size: 16.sp),
      onTap: onTap,
      contentPadding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 8.h),
    );
  }
}
