import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setting_ui_app/utils/appRoutes.dart';
import 'package:setting_ui_app/utils/globals.dart';
import 'package:setting_ui_app/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return (Global.isIOS)
        ? CupertinoApp(
            debugShowCheckedModeBanner: false,
            title: "My App",
            //home: HomePage(),
            initialRoute: AppRoutes().homePage,
            routes: routes,
          )
        : MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "My App",
            //home: HomePage(),
            initialRoute: AppRoutes().homePage,
            routes: routes,
          );
  }
}
