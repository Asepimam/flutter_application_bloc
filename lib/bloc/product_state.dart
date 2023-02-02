part of 'product_bloc.dart';

@immutable
abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoding extends ProductState {}

class ProductLoaded extends ProductState {
  final List<Product> result;

  ProductLoaded(this.result);
}
