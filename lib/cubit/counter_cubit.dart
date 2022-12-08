import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  void increment() {
    state.value++;
    emit(state);
  }

  void decrement() {
    state.value--;
    emit(state);
  }
}