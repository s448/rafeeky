import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes.dart';
import 'Utils/style_manager.dart';

void main(List<String> args) {
  return runApp(const RafeekyApp());
}

class RafeekyApp extends StatelessWidget {
  const RafeekyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      textDirection: TextDirection.rtl,
      debugShowCheckedModeBanner: false,
      theme: StyleManager.themeManager,
      initialRoute: Routes.navbar,
      getPages: getPages,
    );
  }
}
