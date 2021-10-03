import 'package:flutter/material.dart';
import 'package:game_store/app/config/routes/app_pages.dart';
import 'package:game_store/app/config/themes/app_theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Game Store',
      theme: AppTheme.basic,
      initialRoute: AppPages.initial,
      getPages: AppPages.pages,
    );
  }
}
