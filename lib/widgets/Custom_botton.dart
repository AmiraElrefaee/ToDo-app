import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_application/constants.dart';

class CustomBottom extends StatelessWidget {
   CustomBottom({super.key, this.onTap,  this.isLoading=false});
final void Function()? onTap;
final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kprimaryColor,
        ),
        child: Center(
          child:isLoading?SizedBox(
            height: 30,
            width: 30,
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          ): Text('Add',
          style: TextStyle(
            color: Colors.black,
            fontSize: 27,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}