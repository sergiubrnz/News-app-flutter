import 'package:flutter/material.dart';
import 'package:news_app/controller/color_controller.dart';
import 'package:get/get.dart';

class BottomNavigationItem extends StatelessWidget {
  late final int item_index;
  late final int current_index;
  late final Icon icon;

  BottomNavigationItem(this.item_index, this.current_index, this.icon);

  ColorControler c = Get.put(ColorControler());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: icon,
      ),
      decoration: BoxDecoration(
        color: item_index == current_index
            ? c.secondaryColor.value
            : Colors.transparent,
        shape: BoxShape.circle,
      ),
    );
  }
}
