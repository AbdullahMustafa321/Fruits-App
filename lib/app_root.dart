import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'features/splash/presentation/views/splash_view.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      splitScreenMode: true,
        minTextAdapt: true,
      designSize:const Size(360, 690),
      builder: (_, context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashView()
        );
      }
    );
  }
}
