part of 'bottomsheet_bloc.dart';

abstract class BottomsheetState{}

class BottomsheetLoading extends BottomsheetState {}

class BottomsheetLoaded extends BottomsheetState {
  User user;
  BottomsheetLoaded(this.user);
}
