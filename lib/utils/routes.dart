import 'package:flutter/cupertino.dart';
import 'package:setting_ui_app/screens/home_screen/page/ios_setting.dart';


import '../screens/home_screen/page/android_setting.dart';
import 'appRoutes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes().homePage: (context) => AndroidSetting(),
};
