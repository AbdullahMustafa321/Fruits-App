
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/services/shared_preferences_singleton.dart';
import 'package:fruits_app/features/auth/presentation/views/login_view.dart';
import 'package:fruits_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_app/generated/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});
  @override

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    excuteNaviagtion();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch  ,
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset(Assets.imagesFreepikPlant)),
        SvgPicture.asset(Assets.imagesSplashLogo),
        SvgPicture.asset(Assets.imagesFreepikCircles,
        fit: BoxFit.fill,),
      ],
    );
  }
  void excuteNaviagtion(){
    bool isBoardingViewSeen = Prefs.getBool(kIsBoardingViewSeen) ?? false;
    Future.delayed(const Duration(seconds: 3),(){

      if (isBoardingViewSeen) {
        Navigator.of(context).pushReplacementNamed(LoginView.routeName);
      }else{
        Navigator.of(context).pushReplacementNamed(OnBoardingView.routeName);
      }
    });
  }
}
