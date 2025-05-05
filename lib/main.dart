import 'package:flutter/material.dart';
import 'package:fruits_app/app_root.dart';
import 'package:fruits_app/core/services/shared_preferences_singleton.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  runApp(const AppRoot());
}
