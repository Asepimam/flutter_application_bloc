part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class OnAuthEventCalled extends AuthEvent {
  final String name;
  final String password;

  OnAuthEventCalled({required this.name, required this.password});
}
