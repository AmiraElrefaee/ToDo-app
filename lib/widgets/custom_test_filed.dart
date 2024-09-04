import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextgFiled extends StatelessWidget {
  const CustomTextgFiled({super.key, required this.hint, this.maxlines=1});
final String hint;
final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlines,
      style: TextStyle(
        fontSize: 25
      ),
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
        hintText:hint,
        hintStyle: TextStyle(
          color: kprimaryColor
        ),
        border: buildBorder(

        ),
        enabledBorder:buildBorder(

        ),
          focusedBorder: buildBorder(
            kprimaryColor,
          ),

      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
  borderSide:  BorderSide(
  color:color?? Colors.white,
  width: 2)
      );
  }
}
