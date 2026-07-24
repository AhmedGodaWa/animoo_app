import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract final class AppTextTheme {
  const AppTextTheme._();

  static const TextTheme textTheme = TextTheme(
    /// Main Screen Titles
    /// Login - Sign Up
    displayLarge: TextStyle(
      fontSize: 38,
      fontWeight: FontWeight.w400,
      fontFamily: 'Otama',
      color: AppColors.textPrimary,
    ),

    /// Secondary Screen Titles
    /// Forget Password
    /// OTP Verification
    /// Create New Password
    headlineLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      fontFamily: 'Otama',
      color: AppColors.primary,
    ),

    /// App Logo
    /// ANIMOOO
    headlineMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'OriginalSurfer',
      color: AppColors.primary,
    ),

    /// Field Labels
    /// Email
    /// Password
    /// Confirm Password
    /// First Name
    /// Last Name
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.textSecondary,
    ),

    /// Description Text
    /// Please enter...
    bodyLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.greyText,
    ),

    /// Hint Text
    /// Enter your email...
    bodyMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.hintText,
    ),

    /// Small Action Text
    /// Forget Password?
    /// Resend Code
    bodySmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: AppColors.primary,
    ),

    /// Primary Button Text
    /// Log In
    /// Sign Up
    /// Send Code
    /// Confirm
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
    ),

    /// Secondary Text
    /// Don't have an account?
    /// Already have an account?
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.disabledText,
    ),

    /// Primary Link
    /// Sign Up Now
    /// Log In
    labelSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: AppColors.primary,
    ),
  );
}
