import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/images/logo/app_logo.svg', width: 80),

        Text('ANIMOOO', style: Theme.of(context).textTheme.headlineMedium),
      ],
    );
  }
}
