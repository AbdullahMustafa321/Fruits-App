import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/features/on_boarding/presntation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.topLeft,
            child: SvgPicture.asset('assets/images/plant.svg')),
        SvgPicture.asset('assets/images/logo.svg'),
        SvgPicture.asset('assets/images/splash buttons.svg'),
      ],
    );
  }

  void excuteNavigation() {
    Future.delayed( const Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    });
  }
}
