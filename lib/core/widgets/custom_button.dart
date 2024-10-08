import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});
final VoidCallback onPressed;
final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.h,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r)
          ),
          backgroundColor: AppColors.kPrimaryColor,
        ),
          onPressed: onPressed, child: Text(text,style: TextStyle(color: Colors.white),)),
    );
  }
}
