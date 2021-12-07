import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'cartpage_event.dart';
part 'cartpage_state.dart';

class CartpageBloc extends Bloc<CartpageEvent, CartpageState> {
  CartpageBloc() : super(CartpageInitial()) {
    on<CartpageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
