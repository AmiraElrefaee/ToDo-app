import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_application/constants.dart';

import '../models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note)async{
    emit(AddNoteLoading());
    //it is also true-- var NotesBox=Hive.box(kNotesBox);

    try {
      var NotesBox=Hive.box<NoteModel>(kNotesBox);
         await NotesBox.add(note);
         emit(AddNoteSucces());
    } catch (e) {
      emit(AddNotetFailure('the erro in add note cubit --${e.toString()}'));
    }

  }
}
