import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_application/models/note_model.dart';

import '../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel> ?notes;
  fetchAllNote(){
print(7);
    //it is also true-- var NotesBox=Hive.box(kNotesBox);

      var NotesBox=Hive.box<NoteModel>(kNotesBox);
     notes=NotesBox.values.toList();
      print(6);
      print(notes!.length);
      // isLoading=false;
      emit(NotesSucces( notes!));


      // isLoading=false;
      // emit(NotesFailuer('the erro in add note cubit --${e.toString()}'));


  }
}
