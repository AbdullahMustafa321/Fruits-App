import 'package:flutter/material.dart';

import '../utils/app_text_style.dart';

AppBar buildAppBar(context, {required String text}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
        onPressed: () {
      Navigator.pop(context);
    }, icon: const Icon(Icons.arrow_back_ios_new)),
    centerTitle: true,
    title: Text(
      text,
      style: AppTextStyle.bold19,
    ),
  );
}
