import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.image, required this.backGroundImage, required this.subTitle, required this.title});
final String image, backGroundImage;
final String subTitle;
final Widget title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height*0.5,
          child: Stack(
            children: [
              Positioned.fill(child: SvgPicture.asset(backGroundImage,fit: BoxFit.fill,)),
              Positioned(bottom: 0,left: 0,right: 0,child: SvgPicture.asset(image)),
              Padding(
                padding:  EdgeInsets.all(16.r),
                child: const Text('تخط'),
              )
            ],
          ),
        ),
        SizedBox(height: 60.h,),
        title,
        SizedBox(height: 22.h,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(subTitle,textAlign:TextAlign.center,style: TextStyle(fontSize: 13.sp,fontFamily: 'Cairo',fontWeight: FontWeight.w600),),
        )
      ],
    );
  }
}
