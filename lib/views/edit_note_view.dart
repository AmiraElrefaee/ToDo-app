import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/Edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditViewBody(),
    );
  }
}
