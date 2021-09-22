import 'package:flutter/material.dart';
import 'package:news_app/components/bottom_navigator.dart';
import 'package:get/get.dart';
import 'package:news_app/utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: BottomNavigator(),
      theme: ThemeData(backgroundColor: Colors.green),
    );
  }
}
