import 'package:bloc/bloc.dart';
import 'package:food_testing/model/user_model.dart';

part 'bottomsheet_event.dart';
part 'bottomsheet_state.dart';

class BottomsheetBloc extends Bloc<BottomsheetEvent, BottomsheetState> {
  BottomsheetBloc() : super(BottomsheetLoading()) {
    on<BottomsheetEvent>((event, emit) {
        emit(BottomsheetLoading());});
    on<OnLoadBottomSheet>((event, emit) {
      try {
        emit(BottomsheetLoaded(event.user));
      } catch (_) {
      }
    });
  }
}
