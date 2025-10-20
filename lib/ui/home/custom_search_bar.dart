import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBar extends StatelessWidget {
  final String text;
  final IconData icon;
  const CustomSearchBar({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFEFEEEE),
        hint: Text(
          text,
          style: TextStyle(fontSize: 16.sp, color: Colors.grey),
        ),
        prefixIcon: Icon(icon, color: Colors.black, size: 24.w),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(50.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(50.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(50.r),
        ),
      ),
    );
  }
}
