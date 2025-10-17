import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/utils/theme.dart';

class CustomElevatedButton extends StatelessWidget {
  final Color backgroundcolor;
  final Color foregroundColorcolor;
  final String label;
  final VoidCallback? onTap;
  const CustomElevatedButton({
    super.key,
    required this.backgroundcolor,
    required this.foregroundColorcolor,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundcolor,
        foregroundColor: foregroundColorcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(50),
        ),
        fixedSize: Size(280.w, 50.h),
      ),

      onPressed: onTap,
      child: Text(label, style: AppTextStyles.subheading),
    );
  }
}
