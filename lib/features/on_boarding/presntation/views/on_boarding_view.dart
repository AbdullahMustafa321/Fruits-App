import 'package:flutter/material.dart';
import 'package:fruits_app/features/on_boarding/presntation/views/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
static const String routeName='OnBoardingView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:OnBoardingViewBody()
    );
  }
}
