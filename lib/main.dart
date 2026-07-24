import 'package:animoo_app/core/app/app_router.dart';
import 'package:animoo_app/core/app/app_routes.dart';
import 'package:animoo_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnimooApp());
}

class AnimooApp extends StatelessWidget {
  const AnimooApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.login,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
