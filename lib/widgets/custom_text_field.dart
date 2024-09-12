import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxlines=1,this.onSaved, this.onChanged});
final String hint;
final int maxlines;
final void Function(String)? onChanged;
final  void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged ,
      onSaved:onSaved ,
      validator: (value){
        if (value?.isEmpty?? true){
          return 'field is require';
        }else{
          return null;
        }
      }
      ,
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
