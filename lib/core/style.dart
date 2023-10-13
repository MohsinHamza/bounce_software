import 'package:flutter/material.dart';

class AppColors {
  static Color bgColor = const Color(0xff0F0F11);
  static Color containerBgColor = const Color(0xff19191B);
  static Color accentColor = const Color(0xff7C47EF);
  static Color white = const Color(0xffffffff);
  static Color lightWhite = const Color(0xffffffff).withOpacity(.5);
  static Color hintColor = const Color(0xffffffff).withOpacity(.25);
  static Color greyColor = const Color(0xff818388);
}

class AppTextStyle {
  static TextStyle h1Bold = TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: AppColors.white);
  static TextStyle h1SemiBold = TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: AppColors.accentColor);
  static TextStyle backSemiBold = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.accentColor);
  static TextStyle h1Regular = TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: AppColors.white);
  static TextStyle h2Bold = TextStyle(fontSize: 9, fontWeight: FontWeight.w600, color: AppColors.white);
  static TextStyle h2Regular = TextStyle(fontSize: 9, fontWeight: FontWeight.w400, color: AppColors.white);
  static TextStyle greyBodyText = TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.greyColor);
  static TextStyle bodyText = TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.white);
}
