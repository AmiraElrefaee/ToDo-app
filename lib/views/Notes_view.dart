


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../widgets/Notes_view_body.dart';
import '../widgets/custom_note_button_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16)
    ),
    context: context, builder: (context){

  return const AddNoteBottonSheet();
});
      }
        ,child:const Icon(
        Icons.add
      ),),
      body: NotesViewBody(),
    );

  }

}
