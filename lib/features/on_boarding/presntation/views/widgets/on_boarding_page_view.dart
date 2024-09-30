import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/on_boarding/presntation/views/widgets/page_view_item.dart';
import 'package:fruits_app/generated/assets.dart';

class OnBoardingPageView extends StatefulWidget {
  const OnBoardingPageView({super.key});

  @override
  State<OnBoardingPageView> createState() => _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends State<OnBoardingPageView> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage=pageController.page!.round();
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
    return PageView(
      children: [
        PageViewItem(
          image: Assets.imagesPageViewItem1Image,
          backGroundImage: Assets.imagesPageViewItem1BackgroundImage,
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: 'مرحبًا بك في ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23.sp,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w700,
                      height: 0)),
              TextSpan(
                  text: 'Fruit',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 23.sp,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w700,
                      height: 0)),
              TextSpan(
                  text: 'HUB',
                  style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 23.sp,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w700,
                      height: 0))
            ]),
          ),
        ),
        PageViewItem(
          image: Assets.imagesPageViewItem2Image,
          backGroundImage: Assets.imagesPageViewItem2BackgroundImage,
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: Text(
            'ابحث وتسوق',
            style: TextStyle(
                fontSize: 23.sp,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w700,
                height: 0),
          ),
        )
      ],
    );
  }
}
