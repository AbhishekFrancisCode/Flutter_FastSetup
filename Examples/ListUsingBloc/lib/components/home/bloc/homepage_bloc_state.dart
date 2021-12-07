part of 'homepage_bloc_bloc.dart';

@immutable
abstract class HomepageBlocState {}

class HomepageBlocInitial extends HomepageBlocState {}

class HomepageBlocLoaded extends HomepageBlocState {
User list;
  HomepageBlocLoaded(this.list);
}

class HomepageBlocError extends HomepageBlocState {}

class Failure {
  final String message;
  Failure(this.message);
}
