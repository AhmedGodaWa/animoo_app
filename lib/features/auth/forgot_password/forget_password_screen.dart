import 'package:animoo_app/core/app/app_routes.dart';
import 'package:animoo_app/core/utils/app_validators.dart';
import 'package:animoo_app/core/widgets/app_text_field.dart';
import 'package:animoo_app/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back'),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_outlined, weight: 30),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Forget Your Password ?',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),

                          const SizedBox(height: 10),

                          Text(
                            "Please enter the email address associated with your account, and we'll send you OTP to reset your password.",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),

                          const SizedBox(height: 40),

                          AppTextField(
                            label: 'Email',
                            hintText: 'Enter your email address',
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.done,
                            validator: AppValidators.email,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                PrimaryButton(
                  text: 'Send Code',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // APi

                      Navigator.pushNamed(context, AppRoutes.otpVerification);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
