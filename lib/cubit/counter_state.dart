// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_cubit.dart';

class CounterState {
  int value;
  CounterState({
    required this.value,
  });

}

class CounterInitial extends CounterState {
  CounterInitial({super.value = 1});
}
