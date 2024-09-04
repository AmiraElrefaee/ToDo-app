import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextgFiled extends StatelessWidget {
  const CustomTextgFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontSize: 25
      ),
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
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
