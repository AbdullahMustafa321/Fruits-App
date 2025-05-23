import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_style.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
              color: Color(0xFFDCDEDE)
          ),
        ),
        Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 17),
          child: Text(
              'أو',
              textAlign: TextAlign.center,
              style: AppTextStyle.semiBold16.copyWith(color:const Color(0xFF0C0D0D))
          ),
        ),
        const Expanded(
          child: Divider(
              color: Color(0xFFDCDEDE)
          ),
        ),
      ],
    );
  }
}
