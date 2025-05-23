import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/utils/app_text_style.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton(
      {super.key,
      required this.text,
      required this.image,
      required this.onPressed});

  final String text;
  final String image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: TextButton(
        style: TextButton.styleFrom(
            side: BorderSide(color: const Color(0xFFDCDEDE), width: 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)),
        ),
        onPressed: () {},
        child: ListTile(
          visualDensity: VisualDensity(vertical: VisualDensity.minimumDensity),
          leading: SvgPicture.asset(image),
          title: Text(
            text,
            style: AppTextStyle.semiBold16,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
