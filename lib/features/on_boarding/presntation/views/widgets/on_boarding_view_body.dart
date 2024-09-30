import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/features/home/presentation/views/home_view.dart';
import 'package:fruits_app/features/on_boarding/presntation/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(child: OnBoardingPageView()),
          DotsIndicator(
            dotsCount: 2,
            decorator: DotsDecorator(
                activeColor: AppColors.kPrimaryColor,
                color: AppColors.kPrimaryColor.withOpacity(0.5)),
          ),
          SizedBox(height: 29.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:16.w),
            child: CustomButton(text: 'ابدأ الان',onPressed:(){
              Navigator.pushReplacementNamed(context, HomeView.routeName);
            } ,),
          ),
          SizedBox(height: 43.h,)
        ],
      ),
    );
  }
}
