import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextTheme {
  const AppTextTheme._();

  static const TextTheme textTheme = TextTheme(
    // Main Auth Titles
    displayLarge: TextStyle(
      fontSize: 38,
      fontWeight: FontWeight.w400,
      color: AppColors.textPrimary,
    ),

    // Secondary Titles
    headlineLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: AppColors.primary,
    ),

    // Labels
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.textSecondary,
    ),

    // Description Text
    bodyLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.greyText,
    ),

    // Hint Text
    bodyMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.hintText,
    ),

    // Small Text
    bodySmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: AppColors.textPrimary,
    ),

    // Button Text
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
    ),

    // Small Interactive Text
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.disabledText,
    ),
  );
}
