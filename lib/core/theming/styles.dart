import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font36WhitetPtserif = TextStyle(
    fontSize: 36.sp,
    color: Color.fromRGBO(255, 255, 255, 1),
    fontFamily: 'PTSerif',
  );

  static TextStyle font24WhitetPtserif = TextStyle(
    fontSize: 24.sp,
    color: Color.fromRGBO(255, 255, 255, 1),
    fontFamily: 'PTSerif',
  );

  static TextStyle font16WhitePoppins = TextStyle(
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
    color: Color.fromRGBO(255, 255, 255, 0.49),
    //fontFamily: 'Poppins',
  );
}
