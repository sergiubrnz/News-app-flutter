import 'package:flutter/material.dart';
import 'package:news_app/components/bottom_navigator.dart';
import 'package:get/get.dart';
import 'package:news_app/utils/constants.dart';
import 'controller/color_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  ColorControler c = Get.put(ColorControler());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        home: BottomNavigator(),
        theme: ThemeData(
          backgroundColor: kBackgroundColor,
          scaffoldBackgroundColor: kBackgroundColor,
          appBarTheme: AppBarTheme(
            backgroundColor: kBackgroundColor,
            iconTheme: IconThemeData(color: c.primaryColor.value),
          ),
          // colorScheme: Theme.of(context).colorScheme.copyWith(
          //       primary: kBackgroundColor,
          //       onPrimary: Colors.black,
          //     ),
        ),
      ),
    );
  }
}
