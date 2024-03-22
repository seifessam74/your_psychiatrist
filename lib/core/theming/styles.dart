import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_psychiatrist/core/theming/colors.dart';

class TextStyles {
  static TextStyle font36WhitetPtserif = TextStyle(
    fontSize: 36.sp,
    color: Colors.white,
    fontFamily: 'PTSerif',
  );

  static TextStyle font24WhitetPtserif = TextStyle(
    fontSize: 24.sp,
    color: Colors.white,
    fontFamily: 'PTSerif',
  );

  static TextStyle font16WhitePoppinsUnderlined = TextStyle(
    color: Colors.white,
    fontSize: 13.sp,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    decorationColor: Colors.white,
    decorationThickness: 2,
    fontFamily: 'Poppins',
  );

  static TextStyle font13SemiTransparentWhitePoppins = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.semiTransparentWhite,
  );

  static TextStyle font40BlueMidnightPoppins = TextStyle(
    fontSize: 40.sp,
    color: ColorsManager.blueMidNight,
    fontFamily: 'Poppins',
    shadows: [
      Shadow(
        blurRadius: 4.0,
        color: Color.fromRGBO(0, 0, 0, 0.25),
        offset: Offset(0, 4),
      ),
    ],
  );

  static TextStyle font32BlueMidnightPoppins = TextStyle(
    fontSize: 32.sp,
    color: ColorsManager.blueMidNight,
    fontFamily: 'Poppins',
    shadows: [
      Shadow(
        blurRadius: 4.0,
        color: Color.fromRGBO(0, 0, 0, 0.25),
        offset: Offset(0, 4),
      ),
    ],
  );

  static TextStyle font16BlueMidnightPoppins = TextStyle(
    fontSize: 16.sp,
    color: ColorsManager.buttonTextColor,
    fontFamily: 'Poppins',
  );

  static TextStyle font10WhitePoppins = TextStyle(
    fontSize: 10.sp,
    color: Colors.white,
    fontFamily: 'Poppins',
  );

  static TextStyle font16WhitePoppins = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontFamily: 'Poppins',
  );
}
