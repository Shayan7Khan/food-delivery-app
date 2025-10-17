import 'package:flutter/material.dart';

class AppTextStyles {
  // Main Heading (like screen titles)
  static const heading = TextStyle(
    fontFamily: 'SFProRounded',
    fontWeight: FontWeight.w600,
    fontSize: 24,
  );

  // Subheading or Section Title
  static const x = TextStyle(
    fontFamily: 'SFProSemiBold',
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  // Normal Paragraph
  static const body = TextStyle(
    fontFamily: 'SFProRegular',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 1.5,
  );

  // Small Caption or Hint Text
  static const caption = TextStyle(
    fontFamily: 'SFProRegular',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: Colors.grey,
  );
}
