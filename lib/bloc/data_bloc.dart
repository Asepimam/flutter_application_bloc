import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'data_event.dart';
part 'data_state.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  DataBloc() : super(DataInitial()) {
    on<OnCalleDataEvent>((event, emit) async {
      emit(DataLoading());
      await Future.delayed(const Duration(seconds: 3));
      emit(DataLoaded("Succes load"));
    });
  }
}
