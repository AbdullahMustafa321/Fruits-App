import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

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
}
