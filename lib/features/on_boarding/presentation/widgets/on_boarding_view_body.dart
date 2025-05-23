import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/features/auth/presentation/views/login_view.dart';
import '../../../../constants.dart';
import '../../../../core/services/shared_preferences_singleton.dart';
import '../../../../core/widgets/custom_button.dart';
import 'on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController ;
  var currentPage = 0;
  @override
  void initState() {
pageController = PageController();
pageController.addListener(() {
  currentPage= pageController.page!.round();
  setState(() {

  });
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
    return Column(
      children: [
          Expanded(child: OnBoardingPageView(pageController: pageController,)),
        DotsIndicator(dotsCount: 2,
          decorator:DotsDecorator(
            activeColor: currentPage==0?AppColors.primaryColor:AppColors.primaryColor.withOpacity(.5),
            color: currentPage==1?AppColors.primaryColor:AppColors.primaryColor.withOpacity(.5)
          ),),
        const SizedBox(height: 29,),
        Visibility(
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          visible: currentPage==1 ? true : false,
          child: Padding(
            padding:  const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: CustomButton(text:'ابدأ الان',onPressed: (){
              Prefs.setBool(kIsBoardingViewSeen, true);
              Navigator.of(context).pushReplacementNamed(LoginView.routeName);
            },),
          ),
        ),
        const SizedBox(height: 43,),
      ],
    );
  }
}
