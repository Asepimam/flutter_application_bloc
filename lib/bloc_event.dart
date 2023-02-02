import 'package:flutter_bloc/flutter_bloc.dart';

/*
event dapat dibuat dengan menggunakan class atau enum
*/

// event menggunakan Abstract Class
abstract class CounterEvent {}

class CounterIncrementEvent extends CounterEvent {}

class CounterDecrementEvent extends CounterEvent {}

// even menggunakan enum
// enum CounterEvent{increment,decrement}

/*
state tidak hanya berupa int,string,boolean,list,map,object tapi bisa juga berupa class
contoh pemanfaatan class sebagai state
 */
class StateClass {
  int value;
  StateClass(this.value);
}

// bisa menggunakan Bloc atau Cubit

// menggunakan Class Bloc
class CounterBloc extends Bloc<CounterEvent, StateClass> {
  CounterBloc() : super(StateClass(2)) {
    // on<CounterEvent>((event, emit) {
    //   if (event is CounterIncrementEvent) {
    //     emit(state + 1);
    //   } else {
    //     emit(state - 1);
    //   }
    // });

    // memisahakan state
    on<CounterIncrementEvent>((event, emit) {
      emit(StateClass(state.value + 1));
    });
    on<CounterDecrementEvent>(((event, emit) {
      emit(StateClass(state.value - 1));
    }));
  }
}

// menggunakan Cubit
class CounterCubit extends Cubit<StateClass> {
  CounterCubit() : super(StateClass(0));
  void increment() {
    emit(StateClass(state.value + 1));
  }

  decrement() {
    emit(StateClass(state.value - 1));
  }
}
