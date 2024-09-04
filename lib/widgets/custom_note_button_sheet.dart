import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_test_filed.dart';

class AddNoteBottonSheet extends StatelessWidget {
  const AddNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextgFiled(),
        ],
      ),
    );
  }
}
