import 'package:flutter/material.dart';
import 'package:news_app/utils/constants.dart';

class BottomNavigationItem extends StatelessWidget {
  late final int item_index;
  late final int current_index;
  late final Icon icon;

  BottomNavigationItem(this.item_index, this.current_index, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: icon,
      ),
      decoration: BoxDecoration(
        color:
            item_index == current_index ? kBlueSecundary : Colors.transparent,
        shape: BoxShape.circle,
      ),
    );
  }
}
