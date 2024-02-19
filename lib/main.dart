import 'package:first/app_colors.dart';
import 'package:first/splash_screen/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const TextStyle defaultTextStyle =
        TextStyle(fontFamily: 'IranYekan', color: Colors.white);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(color: AppColors.secondaryTextColor))),
        elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
                alignment: Alignment.center,
                backgroundColor:
                    MaterialStatePropertyAll(AppColors.primaryColor),
                foregroundColor:
                    MaterialStatePropertyAll(AppColors.onPrimaryColor))),
        dividerTheme: const DividerThemeData(color: Color(0xff252b34)),
        textTheme: TextTheme(
          displayLarge: defaultTextStyle.copyWith(
              fontSize: 96, fontWeight: FontWeight.w300),
          displayMedium: defaultTextStyle.copyWith(
              fontSize: 60, fontWeight: FontWeight.w400),
          displaySmall: defaultTextStyle.copyWith(
              fontSize: 48, fontWeight: FontWeight.w400),
          headlineMedium: defaultTextStyle.copyWith(
              fontSize: 34, fontWeight: FontWeight.w400),
          headlineSmall: defaultTextStyle.copyWith(
              fontSize: 24, fontWeight: FontWeight.w400),
          titleLarge: defaultTextStyle.copyWith(
              fontSize: 20, fontWeight: FontWeight.w600),
          titleMedium: defaultTextStyle.copyWith(
              fontSize: 18, fontWeight: FontWeight.w500),
          bodyLarge: defaultTextStyle.copyWith(
              fontSize: 16, fontWeight: FontWeight.w400),
          bodyMedium: defaultTextStyle.copyWith(
              fontSize: 14, fontWeight: FontWeight.w400),
          bodySmall: defaultTextStyle.copyWith(
              fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white38),
          labelLarge: defaultTextStyle.copyWith(
              fontSize: 14, fontWeight: FontWeight.w500),
        ),
        colorScheme: const ColorScheme.dark(
            primary: AppColors.primaryColor,
            onPrimary: AppColors.onPrimaryColor,
            secondary: AppColors.secondaryColor,
            onSecondary: AppColors.onSecondaryColor,
            background: AppColors.backgroundColor),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
