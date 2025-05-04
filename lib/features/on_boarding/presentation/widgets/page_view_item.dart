import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_text_style.dart';


class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key, required this.backGroundImage, required this.image, required this.title, required this.subTitle, required this.isVisible,
  });
final String backGroundImage, image;
final String subTitle;
final Widget title;
final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(child: SvgPicture.asset(backGroundImage,fit: BoxFit.fill,)),
              Positioned(
                  left:0,
                  right: 0,
                  bottom: 0,
                  child: SvgPicture.asset(image)),
              Visibility(
                visible: isVisible,
                child: Positioned(
                  top: 10.h,
                  child: Padding(
                    padding:  EdgeInsets.all(16.r),
                    child:  Text('تخط',style: AppTextStyle.regular13.copyWith(color: Color(0xff949d9e)),),
                  ),),
              )
            ],
          ),
        ),
         SizedBox(
          height: 40.h,
        ),
        title,
        SizedBox(
          height: 24.h,
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 37.w),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: AppTextStyle.regular13.copyWith(color: const Color(0xff4e5456)),),
        ),

      ],
    );
  }
}
