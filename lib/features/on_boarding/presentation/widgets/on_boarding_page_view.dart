import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_text_style.dart';
import 'package:fruits_app/features/on_boarding/presentation/widgets/page_view_item.dart';
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
          isVisible:true,
          backGroundImage: Assets.imagesOnBoardingViewBackground1,
          image: Assets.imagesFruitBasket,
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('مرحبًا بك في',
                style: AppTextStyle.bold23.copyWith(color: Colors.black)),
            Text(' Fruit',
                style: AppTextStyle.bold23.copyWith(color: AppColors.primaryColor)),
            Text('HUB',
                style: AppTextStyle.bold23.copyWith(color: Colors.orange)),
          ]),
        ),
        PageViewItem(
          isVisible:false,
          backGroundImage: Assets.imagesOnBoardingViewBackground2,
          image: Assets.imagesPineapple,
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Text('ابحث وتسوق',
                style: AppTextStyle.bold23.copyWith(color: Colors.black)),
          ]),
        ),
      ],
    );
  }
}
