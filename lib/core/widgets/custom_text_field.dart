import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_text_style.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key, required this.hintText, required this.textInputType,  this.icon,
  });
final String hintText;
final TextInputType textInputType;
final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffF9FAFA),
        suffixIcon: icon,
        hintText: hintText,
        hintStyle: AppTextStyle.bold13.copyWith(color: const Color(0xFF949D9E)),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder()
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(
          color: Color(0xFFE6E9E9),
          width: 1
        )
      );
  }
}
