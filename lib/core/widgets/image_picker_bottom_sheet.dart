import 'dart:io';

import 'package:animoo_app/core/services/app_image_picker.dart';
import 'package:animoo_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

Future<File?> showImagePickerBottomSheet(BuildContext context) async {
  return await showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Photo Gallery + Camera
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: AppColors.bottomSheetBackground,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () async {
                        final image = await AppImagePicker.pickFromGallery();

                        if (context.mounted) {
                          Navigator.pop(context, image);
                        }
                      },
                      child: SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: Center(
                          child: Text(
                            'Photo Gallery',
                            style: Theme.of(
                              context,
                            ).textTheme.headlineLarge!.copyWith(fontSize: 18),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    InkWell(
                      onTap: () async {
                        final image = await AppImagePicker.pickFromCamera();

                        if (context.mounted) {
                          Navigator.pop(context, image);
                        }
                      },
                      child: SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: Center(
                          child: Text(
                            'Camera',
                            style: Theme.of(
                              context,
                            ).textTheme.headlineLarge!.copyWith(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // Cancel
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SizedBox(
                    height: 60,
                    child: Center(
                      child: Text(
                        'Cancel',
                        style: Theme.of(
                          context,
                        ).textTheme.headlineLarge!.copyWith(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
