import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_application/models/note_model.dart';

import '../notes_cubit/notes_cubit.dart';
import 'Note_item.dart';

class notesListView extends StatelessWidget {
  const notesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: BlocBuilder<NotesCubit, NotesState>(
          builder: (context, state) {
            List<NoteModel> notes=BlocProvider.of<NotesCubit>(context).notes ??[];
            return ListView.builder(
                padding: EdgeInsets.zero,
                itemCount:notes.length,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child:  NotemItem(),
                  );
                });
          },
        ),
      ),
    );
  }
}
