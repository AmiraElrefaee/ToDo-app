import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_application/widgets/custem_appBar.dart';

import '../notes_cubit/notes_cubit.dart';
import 'Note_item.dart';
import 'notes_list_view.dart';




class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  void initState(){
    print(1);
    super.initState();
    BlocProvider.of<NotesCubit>(context).fetchAllNote();
    // super.initState();
  }
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
            title: 'ToDo App',
            icon: Icons.search,
          ),
          notesListView(),
        ],
      ),
    );
  }
}
