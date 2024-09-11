part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}
final class NotesLoading extends NotesState {}
final class NotesSucces extends NotesState {
 final  List<NoteModel> note;

  NotesSucces(this.note);

}
final class NotesFailuer extends NotesState {
  final String errMessage;
  NotesFailuer( this.errMessage);
}

