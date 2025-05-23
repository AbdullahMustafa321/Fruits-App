import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';
import '../../../../core/services/shared_preferences_singleton.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../auth/presentation/views/login_view.dart';


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
                  top: 10,
                  child: GestureDetector(
                    onTap: (){
                      Prefs.setBool(kIsBoardingViewSeen, true);
                      Navigator.of(context).pushReplacementNamed(LoginView.routeName);
                    },
                    child: Padding(
                      padding:  const EdgeInsets.all(16),
                      child:  Text('تخط',style: AppTextStyle.regular13.copyWith(color: const Color(0xff949d9e)),),
                    ),
                  ),),
              )
            ],
          ),
        ),
         const SizedBox(
          height: 40,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: AppTextStyle.regular13.copyWith(color: const Color(0xff4e5456)),),
        ),

      ],
    );
  }
}
