import 'dart:io';

import 'package:animoo_app/core/app/app_routes.dart';
import 'package:animoo_app/core/theme/app_colors.dart';
import 'package:animoo_app/core/utils/app_validators.dart';
import 'package:animoo_app/core/widgets/app_text_field.dart';
import 'package:animoo_app/core/widgets/image_picker_bottom_sheet.dart';
import 'package:animoo_app/core/widgets/primary_button.dart';
import 'package:animoo_app/features/auth/widgets/auth_logo.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  File? _selectedImage;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const AuthLogo(),

                          const SizedBox(height: 60),

                          Text(
                            'Sign Up',
                            style: Theme.of(context).textTheme.displayLarge,
                          ),

                          const SizedBox(height: 30),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppTextField(
                                label: 'First Name',
                                hintText: 'Enter your First Name',
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                controller: _firstNameController,
                                // validator: AppValidators.name,
                              ),

                              const SizedBox(height: 20),

                              AppTextField(
                                label: 'Last Name',
                                hintText: 'Enter your Last Name',
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                controller: _lastNameController,
                                // validator: AppValidators.name,
                              ),

                              const SizedBox(height: 20),

                              AppTextField(
                                label: 'Email',
                                hintText: 'Enter your email address',
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.emailAddress,
                                controller: _emailController,
                                validator: AppValidators.email,
                              ),

                              const SizedBox(height: 20),

                              AppTextField(
                                label: 'Phone',
                                hintText: 'Enter your Phone',
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.phone,
                                controller: _phoneController,
                                // validator: AppValidators.phone,
                              ),

                              const SizedBox(height: 20),

                              AppTextField(
                                label: 'Password',
                                hintText: '********',
                                keyboardType: TextInputType.visiblePassword,
                                textInputAction: TextInputAction.next,
                                controller: _passwordController,
                                obscureText: _obscurePassword,
                                validator: AppValidators.password,
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _obscurePassword = !_obscurePassword;
                                    });
                                  },
                                  icon: Icon(
                                    _obscurePassword
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 20),

                              AppTextField(
                                label: 'Confirm Password',
                                hintText: '********',
                                keyboardType: TextInputType.visiblePassword,
                                textInputAction: TextInputAction.done,
                                controller: _confirmPasswordController,
                                obscureText: _obscureConfirmPassword,
                                // validator: AppValidators.confirmPassword,
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _obscureConfirmPassword =
                                          !_obscureConfirmPassword;
                                    });
                                  },
                                  icon: Icon(
                                    _obscureConfirmPassword
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 20),

                              Text(
                                'Upload Image For Your Profile',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),

                              const SizedBox(height: 8),

                              InkWell(
                                onTap: () async {
                                  final image =
                                      await showImagePickerBottomSheet(context);

                                  if (image != null) {
                                    setState(() {
                                      _selectedImage = image;
                                    });
                                  }
                                },
                                borderRadius: BorderRadius.circular(10),
                                child: DottedBorder(
                                  options: const RoundedRectDottedBorderOptions(
                                    color: AppColors.primary,
                                    strokeWidth: 1,
                                    radius: Radius.circular(10),
                                    dashPattern: [4, 3],
                                  ),
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: 200,
                                    child: _selectedImage == null
                                        ? Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                'assets/images/icons/upload_image.svg',
                                                width: 28,
                                              ),

                                              const SizedBox(height: 12),

                                              Text(
                                                'Select file',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium
                                                    ?.copyWith(
                                                      color: AppColors.primary,
                                                    ),
                                              ),
                                            ],
                                          )
                                        : ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            child: Image.file(
                                              _selectedImage!,
                                              width: double.infinity,
                                              height: double.infinity,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 20),

                              PrimaryButton(
                                text: 'Sign Up',
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    // Login
                                  }
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.login);
                        },
                        child: Text(
                          'Log In',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
