import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/custom_app_bar.dart';

import '../widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, text: 'تسجيل دخول'),
      body: const SafeArea(child: LoginViewBody()),
    );
  }
}
