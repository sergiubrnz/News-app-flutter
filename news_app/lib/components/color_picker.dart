import 'package:flutter/material.dart';

class ColorPicker extends StatelessWidget {
  late final Color color;
  late final Border bord;

  ColorPicker(this.color, this.bord);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
        border: bord,
      ),
    );
  }
}
