import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(14, 0),
      child: Row(
        children: [
          Transform.scale(
            scale: 1.2,
            child: Checkbox(
              value: isCheck,
              onChanged: (value) {
              isCheck==false?isCheck=true:isCheck=false;
              setState(() {

              });
            },),
          ),
          Expanded(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                      style: AppTextStyle.semiBold13.copyWith(color: const Color(0xFF949D9E))
                  ),
                  TextSpan(
                      text: 'الشروط والأحكام الخاصة بنا',
                      style: AppTextStyle.semiBold13.copyWith(  color: AppColors.lightPrimaryColor )
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
