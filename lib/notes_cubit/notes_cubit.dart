import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_application/models/note_model.dart';

import '../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNote(){

    //it is also true-- var NotesBox=Hive.box(kNotesBox);
    try {
      var NotesBox=Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes=NotesBox.values.toList();
      // isLoading=false;
      emit(NotesSucces( notes));

    } catch (e) {
      // isLoading=false;
      emit(NotesFailuer('the erro in add note cubit --${e.toString()}'));
    }

  }
}
