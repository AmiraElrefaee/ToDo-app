
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_application/models/note_model.dart';
import 'package:notes_application/notes_cubit/notes_cubit.dart';

import '../views/edit_note_view.dart';
import 'Edit_view_body.dart';

class NotemItem extends StatelessWidget {
  const NotemItem({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return   EditNoteView(note:noteModel);
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top :24,bottom:24,left:16),
        decoration: BoxDecoration(
          color:  Color(noteModel.color),

          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              leading: Checkbox(
                value: noteModel.isCompleted,
                onChanged: (value) {
                  noteModel.isCompleted = value ?? false;
                  noteModel.save(); // 👈 يحفظ الحالة في Hive
                  BlocProvider.of<NotesCubit>(context).fetchAllNote();
                },
              ),
              title: Text(noteModel.title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30
              ),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top :16,bottom: 16),
                child: Text(noteModel.subTitle,
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 20
                ),
                ),
              ),
              trailing: IconButton(
                onPressed: (){
                  noteModel.delete();
                  // BlocProvider.of<NotesCubit(context).fetchAllNote();
                  BlocProvider.of<NotesCubit>(context).fetchAllNote();
                },
                icon: Icon(
                  FontAwesomeIcons.trash,
                  size: 28,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(noteModel.date,
              style: TextStyle(
                  color: Colors.black.withOpacity(.4),fontSize: 20
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
