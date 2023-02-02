// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter_application_bloc/data/list_product.dart';
import 'package:flutter_application_bloc/model/product.dart';
import 'package:meta/meta.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<OnProductEventCalled>((event, emit) async {
      emit(ProductLoding());
      await Future.delayed(const Duration(seconds: 2));
      emit(ProductLoaded(productsDumy));
    });
  }
}
