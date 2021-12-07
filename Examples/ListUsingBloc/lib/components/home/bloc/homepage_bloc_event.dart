part of 'homepage_bloc_bloc.dart';

@immutable
abstract class HomepageBlocEvent {}

class LoadingHomePageEvent extends HomepageBlocEvent {}

class OnClickUserHomePageEvent extends HomepageBlocEvent {
  final String username;
  OnClickUserHomePageEvent(this.username);
}
