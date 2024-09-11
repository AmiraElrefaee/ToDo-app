import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_application/models/note_model.dart';

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
          return const  EditNoteView();
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
                onPressed: (){},
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
