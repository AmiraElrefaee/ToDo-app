import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive,required this.colors});
  final bool isActive;
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return isActive ?   CircleAvatar(
      backgroundColor: Colors.white,
      radius: 40,
      child: CircleAvatar(
        radius: 35,
        backgroundColor: colors,

      ),
    )
        :  CircleAvatar(
      radius: 40,
    backgroundColor: colors,

    );
  }
}
