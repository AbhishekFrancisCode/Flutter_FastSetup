part of 'bottomsheet_bloc.dart';

abstract class BottomsheetEvent {}

class OnLoadBottomSheet extends BottomsheetEvent {
  final User user;
  OnLoadBottomSheet(this.user);
}
