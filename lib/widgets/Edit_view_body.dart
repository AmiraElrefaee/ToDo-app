import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_application/models/note_model.dart';
import 'package:notes_application/notes_cubit/notes_cubit.dart';
import 'package:notes_application/widgets/custem_appBar.dart';

import '../constants.dart';
import 'Edit_color_list_view.dart';
import 'color_item.dart';
import 'colors_list_view.dart';
import 'custom_note_buttom_sheet.dart';
import 'custom_text_field.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.note});
final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
 String ?title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
        const  SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: (){
              widget.note.title= title ??widget.note.title;
              widget.note.subTitle =subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNote();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon:Icons.check,
          ),
          const SizedBox(
        height: 50,
      ),
          CustomTextField(

            onChanged: (value){
              // value=widget.note.title;
              title=value;

            },
        hint: widget.note.title,

      ),
          const SizedBox(
        height: 20,
      ),
          CustomTextField(
            onChanged: (value){
              subTitle=value;
            },
        hint: widget.note.subTitle,
        maxlines: 5,
      ),
          SizedBox(height: 10,),
           EditNoteColorList(
           note: widget.note,
         ),
          // SizedBox(
          //     height: 80,
          //     child: ColorsListView()),


        ],
      ),
    );
  }
}
