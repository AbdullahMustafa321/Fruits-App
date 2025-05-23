import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_text_style.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/features/auth/presentation/widgets/terms_and_conditions.dart';

import '../../../../constants.dart';
import '../../../../core/widgets/custom_text_field.dart';
import 'have_an_account_widget.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          const CustomTextFormField(
            hintText: 'الاسم كامل',
            textInputType: TextInputType.name,
          ),

          const SizedBox(
            height: 16,
          ),
          const CustomTextFormField(
            hintText: 'البريد الإلكتروني',
            textInputType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomTextFormField(
            hintText: 'كلمة المرور',
            textInputType: TextInputType.visiblePassword,
            icon: Icon(
              Icons.remove_red_eye,
              color: Color(0xffC9CECE),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const TermsAndConditions(),
          const SizedBox(
            height: 33,
          ),
          CustomButton(text: 'إنشاء حساب جديد', onPressed: (){}),
          const SizedBox(
            height: 26,
          ),
           const HaveAnAccountWidget()
        ],
      ),
    ));
  }
}

