import 'package:flutter/material.dart';

abstract final class AppColors {
  static const blueLinear = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
  );
  static const purpleLinear = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFC58BF2), Color(0xFFEEA4CE)],
  );
  static const caloriesLinear = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFC58BF2), Color(0xFFB4C0FE)],
  );
  static const progressBarLinear = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFC58BF2), Color(0xFF92A3FD)],
  );
  static const waterIntakeLinear = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFC58BF2), Color(0xFFB4C0FE)],
  );
  static const logoLinear = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFCC8FED), Color(0xFF9DCEFF)],
  );
  static const grayOne = Color(0xFF7B6F72);
  static const primary = Color(0xFF9DCEFF);
  static const grayThree = Color(0xFFDDDADA);
  static const grayTwo = Color(0xFFADA4A5);
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const borderColor = Color(0xFFF7F8F8);
  static const successColor = Color(0xFF42D742);
  static const warningColor = Color(0xFFFFD600);
  static const dangerColor = Color(0xFFFF0000);
}
