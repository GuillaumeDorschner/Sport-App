import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes.dart';
import 'theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sport',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      getPages: routes,
      initialRoute: '/',
    );
  }
}