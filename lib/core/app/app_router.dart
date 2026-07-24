import 'package:animoo_app/features/auth/login/login_screen.dart';
import 'package:flutter/material.dart';


import 'app_routes.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      // case AppRoutes.register:
      //   return MaterialPageRoute(
      //     builder: (_) => const RegisterScreen(),
      //   );

      // case AppRoutes.forgotPassword:
      //   return MaterialPageRoute(
      //     builder: (_) => const ForgotPasswordScreen(),
      //   );

      // case AppRoutes.otpVerification:
      //   return MaterialPageRoute(
      //     builder: (_) => const OtpVerificationScreen(),
      //   );

      // case AppRoutes.createNewPassword:
      //   return MaterialPageRoute(
      //     builder: (_) => const CreateNewPasswordScreen(),
      //   );

      // case AppRoutes.home:
      //   return MaterialPageRoute(
      //     builder: (_) => const HomeScreen(),
      //   );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Route Not Found'),
            ),
          ),
        );
    }
  }
}