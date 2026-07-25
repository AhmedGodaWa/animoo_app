import 'package:animoo_app/core/app/app_routes.dart';
import 'package:animoo_app/core/theme/app_colors.dart';
import 'package:animoo_app/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final otpController = TextEditingController();

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 54,
      height: 53,
      textStyle: Theme.of(
        context,
      ).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.w700),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.border, width: 1),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cancel'),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_outlined, weight: 30),
        ),
      ),

      body: SafeArea(
        child: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'OTP Verfication',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),

                const SizedBox(height: 10),

                Text(
                  "Please enter the 5 digit code sent your phone number",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),

                const SizedBox(height: 40),

                // OTP
                Center(
                  child: Pinput(
                    controller: otpController,
                    length: 5,
                    autofocus: true,
                    keyboardType: TextInputType.number,

                    defaultPinTheme: defaultPinTheme,

                    focusedPinTheme: defaultPinTheme.copyDecorationWith(
                      border: Border.all(color: AppColors.primary, width: 1.5),
                    ),

                    submittedPinTheme: defaultPinTheme.copyDecorationWith(
                      border: Border.all(color: AppColors.primary),
                    ),

                    errorPinTheme: defaultPinTheme.copyDecorationWith(
                      border: Border.all(color: AppColors.error),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 100, bottom: 10),
                  child: PrimaryButton(
                    text: 'Confirm',
                    onPressed: () {
                      if (otpController.text.length == 5) {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.createNewPassword,
                        );
                      }
                    },
                  ),
                ),
                Center(
                  child: Text(
                    'Resend Code In 00:59',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: const Color(0xFF180901),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
