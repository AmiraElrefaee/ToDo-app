import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_application/widgets/custem_appBar.dart';

import 'custom_note_button_sheet.dart';
import 'custom_test_filed.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon:Icons.check,
          ),
      SizedBox(
        height: 50,
      ),
          CustomTextField(
        hint: 'Title',

      ),
      SizedBox(
        height: 20,
      ),
          CustomTextField(
        hint: 'content',
        maxlines: 5,
      ),
      SizedBox(height: 100,),

      SizedBox(
        height: 20,)
        ],
      ),
    );
  }
}
