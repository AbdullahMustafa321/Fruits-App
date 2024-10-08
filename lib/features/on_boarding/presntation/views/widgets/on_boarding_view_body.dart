import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/features/auth/presentation/views/login_view.dart';
import 'package:fruits_app/features/on_boarding/presntation/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
              child: OnBoardingPageView(
            pageController: pageController,
          )),
          DotsIndicator(
            dotsCount: 2,
            decorator: DotsDecorator(
                activeColor: AppColors.kPrimaryColor,
                color: currentPage == 1
                    ? AppColors.kPrimaryColor
                    : AppColors.kPrimaryColor.withOpacity(0.5)),
          ),
          SizedBox(
            height: 29.h,
          ),
          Visibility(
            visible: currentPage == 1 ? true : false,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: CustomButton(
                text: 'ابدأ الان',
                onPressed: () {
                  Navigator.pushReplacementNamed(context, LoginView.routeName);
                },
              ),
            ),
          ),
          SizedBox(
            height: 43.h,
          )
        ],
      ),
    );
  }
}
