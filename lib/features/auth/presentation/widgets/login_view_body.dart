import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_text_style.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/features/auth/presentation/widgets/custom_social_button.dart';
import '../../../../constants.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../generated/assets.dart';
import 'donot_have_account_widget.dart';
import 'or_divider.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              icon: IconButton(
                onPressed: () {},
                icon:
                    const Icon(Icons.remove_red_eye, color: Color(0xffC9CECE)),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('نسيت كلمة المرور؟',
                    style: AppTextStyle.semiBold13
                        .copyWith(color: AppColors.lightPrimaryColor)),
              ],
            ),
            const SizedBox(
              height: 33,
            ),
            CustomButton(text: 'تسجيل دخول', onPressed: () {}),
            const SizedBox(
              height: 33,
            ),
             const DonotHaveAccountWidget(),
            const SizedBox(
              height: 33,
            ),
            const OrDivider(),
            const SizedBox(
              height: 16,
            ),
            CustomSocialButton(
              text: 'تسجيل بواسطة جوجل',
              image: Assets.imagesGoogleIcone,
              onPressed: () {},
            ),
            const SizedBox(height: 16,),
            CustomSocialButton(
              text: 'تسجيل بواسطة أبل',
              image: Assets.imagesAppleIcone,
              onPressed: () {},
            ),
            const SizedBox(height: 16,),
            CustomSocialButton(
              text: 'تسجيل بواسطة فيسبوك',
              image: Assets.imagesFacebookIcone,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
