import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: 'تمتلك حساب بالفعل؟ ',
              style: AppTextStyle.semiBold16.copyWith(color: const Color(0xFF949D9E),)
          ),
          TextSpan(
              recognizer: TapGestureRecognizer()..onTap=(){
                Navigator.of(context).pop();
              },
              text: 'تسجيل دخول',
              style: AppTextStyle.semiBold16.copyWith(color: AppColors.primaryColor)
          ),
        ],
      ),
      textAlign: TextAlign.right,
    );
  }
}
