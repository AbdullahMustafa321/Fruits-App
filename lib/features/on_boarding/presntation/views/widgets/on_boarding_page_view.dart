import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/text_styles.dart';
import 'package:fruits_app/features/on_boarding/presntation/views/widgets/page_view_item.dart';
import 'package:fruits_app/generated/assets.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          image: Assets.imagesPageViewItem1Image,
          backGroundImage: Assets.imagesPageViewItem1BackgroundImage,
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: RichText(
            text:  TextSpan(children: [
               TextSpan(
                  text: 'مرحبًا بك في ',
                  style: TextStyles.bold23.copyWith(color: Colors.black)),
              TextSpan(
                  text: 'Fruit',
                  style: TextStyles.bold23.copyWith(color: AppColors.kPrimaryColor)),
              TextSpan(
                  text: 'HUB',
                  style: TextStyles.bold23.copyWith(color: AppColors.kSecondaryColor))
            ]),
          ),
        ),
       const PageViewItem(
          isVisible: false,
          image: Assets.imagesPageViewItem2Image,
          backGroundImage: Assets.imagesPageViewItem2BackgroundImage,
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: const Text(
            'ابحث وتسوق',
            style: TextStyles.bold23,
          ),
        )
      ],
    );
  }
}
