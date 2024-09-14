import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/note_model.dart';
import 'color_item.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  @override
  late int currentIndex;
  @override
  void initState() {
    currentIndex=colors.indexOf(Color(widget.note.color));
    super.initState();
  }
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context,index){
          return Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.0),
            child:  InkWell(
              onTap: (){
                currentIndex=index;
                widget.note.color=colors[index].value;
                setState(() {

                });
              },
              child: ColorItem(
                colors: colors[index],
                isActive: currentIndex==index ?true :false,
              ),
            ),
          );

        },),
    );
  }
}
