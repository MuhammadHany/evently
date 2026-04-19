import 'package:evently/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class AppThemeManger {
  static ThemeData lightTheme() => ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    appBarTheme: AppBarTheme  (
      backgroundColor: Colors.transparent,
      elevation: 0,
      // iconTheme: IconThemeData(
      //   color: Colors.black
      //   ),
      // systemOverlayStyle: SystemUiOverlayStyle (
      //   statusBarColor: Colors.black,
      //   statusBarBrightness: Brightness.dark,
      // ),
  ),
  textTheme: TextTheme(
  titleLarge: TextStyle(
    fontSize: 20,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w600,
    color: AppColors.maintext,
  ),
    bodyLarge: TextStyle(
    fontSize: 16,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w400,
    color: AppColors.sectext,
  ),
   titleMedium: TextStyle(
    fontSize: 18,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  ),
   bodyMedium: TextStyle(
    fontSize: 14,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  ),
  ),
  );
  

  static ThemeData darkTheme() => ThemeData(
    primaryColor: AppColors.primaryDark,
    scaffoldBackgroundColor: AppColors.scaffoldDarkBackgroundColor,
  );

}