import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Custom_bottom.dart';
import 'custom_test_filed.dart';

class AddNoteBottonSheet extends StatelessWidget {
  const AddNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children:const [
            SizedBox(
              height: 32,
            ),
            CustomTextgFiled(
              hint: 'Title',

            ),
            SizedBox(
              height: 20,
            ),
            CustomTextgFiled(
              hint: 'content',
              maxlines: 5,
            ),
SizedBox(height: 100,),
            CustomBottom(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

