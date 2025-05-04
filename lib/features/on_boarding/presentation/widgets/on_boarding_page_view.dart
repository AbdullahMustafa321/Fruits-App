import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          isVisible: (pageController.hasClients? pageController.page!.round():0)==0,
          backGroundImage: Assets.imagesOnBoardingViewBackground1,
          image: Assets.imagesFruitBasket,
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('مرحبًا بك في',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontFamily: 'Cairo',
                    fontSize: 23.sp)),
            Text(' Fruit',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w700)),
            Text('HUB',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w700)),
          ]),
        ),
        PageViewItem(
          isVisible: (pageController.hasClients?pageController.page!.round():0)!=0,
          backGroundImage: Assets.imagesOnBoardingViewBackground2,
          image: Assets.imagesPineapple,
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Text('ابحث وتسوق',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontFamily: 'Cairo',
                    fontSize: 23.sp)),
          ]),
        ),
      ],
    );
  }
}
