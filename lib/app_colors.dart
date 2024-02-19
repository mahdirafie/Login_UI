import 'package:flutter/material.dart';

class AppColors {
  static const Color backgroundColor = Color(0xff191d23);
  static const Color primaryColor = Color(0xff2f4eff);
  static const Color onPrimaryColor = Colors.white;
  static const Color secondaryColor = Color(0xff4b5768);
  static const Color onSecondaryColor = Colors.white;
  static const Color primaryTextColor = Colors.white;
  static const Color secondaryTextColor = Color(0xff81858b);
}

const ElevatedButtonThemeData elevatedButtonTheme1 = ElevatedButtonThemeData(
    style: ButtonStyle(
        fixedSize: MaterialStatePropertyAll(Size(double.infinity, 50)),
        alignment: Alignment.center,
        backgroundColor: MaterialStatePropertyAll(AppColors.primaryColor),
        foregroundColor: MaterialStatePropertyAll(AppColors.onPrimaryColor)));

const ElevatedButtonThemeData elevatedButtonTheme2 = ElevatedButtonThemeData(
    style: ButtonStyle(
        fixedSize: MaterialStatePropertyAll(Size(double.infinity, 50)),
        alignment: Alignment.center,
        backgroundColor: MaterialStatePropertyAll(AppColors.secondaryColor),
        foregroundColor: MaterialStatePropertyAll(AppColors.onSecondaryColor)));
