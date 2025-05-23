import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';

import '../utils/app_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed});

  final String text;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)
              
              )
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: AppTextStyle.bold16.copyWith(
              color: Colors.white,
            ),
          )),
    );
  }
}
