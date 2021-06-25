part of 'random_person_bloc.dart';

@immutable
abstract class RandomPersonState {}

class RandomPersonInitial extends RandomPersonState {
  final Random_models model;
  RandomPersonInitial(this.model);
}

class RandomError extends RandomPersonState {
  final RandomExceptions message;
  RandomError(this.message);
}
