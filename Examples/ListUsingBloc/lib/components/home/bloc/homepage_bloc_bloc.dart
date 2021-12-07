import 'package:bloc/bloc.dart';
import 'package:food_testing/model/user_model.dart';
import 'package:food_testing/repositories/services.dart';
import 'package:meta/meta.dart';

part 'homepage_bloc_event.dart';
part 'homepage_bloc_state.dart';

class HomepageBlocBloc extends Bloc<HomepageBlocEvent, HomepageBlocState> {
  HomepageBlocBloc() : super(HomepageBlocInitial()) {
    on<HomepageBlocEvent>((event, emit) async {
      try {
        final response = await Services().getUserData();
        emit(HomepageBlocLoaded(response));
      } on Failure catch (_) {
        emit(HomepageBlocError());
      }
    });
      on<OnClickUserHomePageEvent>((event, emit) async {
        try {
          await Services().getUserDetails(event.username);
        } on Failure catch (_) {
          emit(HomepageBlocError());
        }
      });
  } 
}
