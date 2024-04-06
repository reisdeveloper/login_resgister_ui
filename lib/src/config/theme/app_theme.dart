import 'package:flutter/material.dart';
import 'package:login_resgistrer/src/config/constants/colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData? appTheme = ThemeData(
    primaryColor: AppColors.purple,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: AppColors.white,
    fontFamily: 'Roboto Slab',
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.purpleLight,
      textTheme: ButtonTextTheme.primary,
    ),
    iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStatePropertyAll(
          AppColors.white,
        ),
      ),
    ),
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        color: AppColors.grey,
      ),
      titleMedium: TextStyle(
        color: AppColors.black,
      ),
      titleLarge: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
