import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../views/signup_view.dart';

class DonotHaveAccountWidget extends StatelessWidget {
  const DonotHaveAccountWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: 'لا تمتلك حساب؟',
              style: AppTextStyle.semiBold16.copyWith(color: const Color(0xFF949D9E),)
          ),
          const TextSpan(
            text: ' ',
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap=(){
                Navigator.of(context).pushNamed(SignupView.routeName);
            },
              text: 'قم بإنشاء حساب',
              style: AppTextStyle.semiBold16.copyWith(color: AppColors.primaryColor)
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
