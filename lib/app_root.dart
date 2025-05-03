import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/helper_functions/on_generate_route.dart';
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
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: onGenerateRoute,
          initialRoute: SplashView.routeName,
        );
      }
    );
  }
}
