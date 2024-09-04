


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../widgets/Notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child:const Icon(
        Icons.add
      ),),
      body: NotesViewBody(),
    );

  }

}