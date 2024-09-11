


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_application/constants.dart';


import '../widgets/Notes_view_body.dart';
import '../widgets/custom_note_buttom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: (){
         showModalBottomSheet(
           isScrollControlled: true,
        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16)
    ),
      context: context, builder: (context){

       return const AddNoteBottonSheet();
});
      },backgroundColor: kprimaryColor
        ,child:const Icon(
        Icons.add,
          color: Colors.black,
      ),),
      body: NotesViewBody(),
    );

  }

}
