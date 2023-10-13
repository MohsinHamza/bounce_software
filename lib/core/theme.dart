 import 'package:bonus_software/core/style.dart';
import 'package:flutter/material.dart';



class CustomTheme {
  static ThemeData get lightTheme {
    //1
    return ThemeData(
      //2
      primaryColor: AppColors.bgColor,
      scaffoldBackgroundColor: AppColors.bgColor,
      fontFamily: "Montserrat Regular",
      iconTheme: const IconThemeData(),
      textButtonTheme: const TextButtonThemeData(),

      appBarTheme: AppBarTheme(

          elevation: 0,
          color: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black , size: 30),
          titleTextStyle:
          TextStyle(fontSize: 22, color: Colors.black.withOpacity(0.75))

      ),

      bottomNavigationBarTheme:   BottomNavigationBarThemeData(
        elevation: 5,
        unselectedIconTheme: IconThemeData(
          color: AppColors.bgColor,
        ),
        showUnselectedLabels: true,
        unselectedItemColor:AppColors.bgColor,
        backgroundColor: AppColors.bgColor,
      ),

      textTheme: const TextTheme(
        headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: "Montserrat Regular"),
        headlineMedium: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontFamily: "Montserrat Regular"),
        headlineSmall: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontFamily: "Montserrat Regular"),
        bodyLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: "Montserrat Regular"),
        bodyMedium: TextStyle(
            color: Colors.black,
            fontFamily: "Montserrat Regular",
            fontWeight: FontWeight.w500),
        bodySmall: TextStyle(color: Colors.grey, fontFamily: "Montserrat Regular"),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.bgColor,
          textStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: "Montserrat Regular",
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          elevation: 3,
          //side:
          //BorderSide(color: Colors.black, width: 2.5),
        ),
      ),

      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(AppColors.bgColor),
        fillColor: MaterialStateProperty.all(AppColors.bgColor),
        shape: RoundedRectangleBorder(
          // Making around shape
            borderRadius: BorderRadius.circular(2)),
      ),

      inputDecorationTheme: InputDecorationTheme(


        suffixIconColor: Colors.grey,
        hintStyle: AppTextStyle.greyBodyText.copyWith(
            fontWeight: FontWeight.normal,

        ),
        contentPadding:
        const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
        filled: true,
        fillColor: AppColors.containerBgColor,
        prefixIconColor: Colors.grey.withOpacity(0.5),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:BorderSide(width: 1.0,color: Colors.grey.withOpacity(0.1))),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:   BorderSide(width: 1.0,color: Colors.grey.withOpacity(0.1),


          ),




        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:   BorderSide(width: 1.0,color: Colors.grey.withOpacity(0.1))),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:   BorderSide(width: 1.0,color: Colors.grey.withOpacity(0.1))),
      ),
    );
  }
}
