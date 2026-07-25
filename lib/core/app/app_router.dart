import 'package:animoo_app/features/auth/create_new_password/create_new_password_screen.dart';
import 'package:animoo_app/features/auth/forgot_password/forget_password_screen.dart';
import 'package:animoo_app/features/auth/login/login_screen.dart';
import 'package:animoo_app/features/auth/otp_verification/otp_verification_screen.dart';
import 'package:animoo_app/features/auth/signup/signup_screen.dart';
import 'package:animoo_app/features/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'app_routes.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case AppRoutes.signup:
        return MaterialPageRoute(builder: (_) => const SignupScreen());

      case AppRoutes.forgetPassword:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordScreen());

      case AppRoutes.otpVerification:
        return MaterialPageRoute(builder: (_) => const OtpVerificationScreen());

      case AppRoutes.createNewPassword:
        return MaterialPageRoute(
          builder: (_) => const CreateNewPasswordScreen(),
        );

      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Route Not Found'))),
        );
    }
  }
}
