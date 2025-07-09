import 'package:flutter/material.dart';

import 'colors.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.white,
    brightness: Brightness.light,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(
      color: AppColors.primary,
      fontWeight: FontWeight.w600,
      fontSize: 24,
    ),
    titleMedium: TextStyle(
      fontStyle: FontStyle.normal,
      color: AppColors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      fontStyle: FontStyle.normal,
      color: AppColors.white,
      fontSize: 18,
      fontWeight: FontWeight.w300,
    ),
    bodyLarge: TextStyle(
      fontStyle: FontStyle.normal,
      color: AppColors.grayOne,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
      color: AppColors.grayTwo,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontStyle: FontStyle.normal,
      color: AppColors.grayThree,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  ),
  iconTheme: const IconThemeData(color: AppColors.white),
);
final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primary,
    brightness: Brightness.dark,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(
      color: AppColors.primary,
      fontWeight: FontWeight.w600,
      fontSize: 24,
    ),
    titleMedium: TextStyle(
      fontStyle: FontStyle.normal,
      color: AppColors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      fontStyle: FontStyle.normal,
      color: AppColors.white,
      fontSize: 18,
      fontWeight: FontWeight.w300,
    ),
    bodyLarge: TextStyle(
      fontStyle: FontStyle.normal,
      color: AppColors.grayOne,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
      color: AppColors.grayTwo,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontStyle: FontStyle.normal,
      color: AppColors.grayThree,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  ),
  iconTheme: const IconThemeData(color: AppColors.white),
);
