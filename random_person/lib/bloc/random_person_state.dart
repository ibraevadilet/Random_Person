part of 'random_person_bloc.dart';

@immutable
abstract class RandomPersonState {}

class RandomPersonInitial extends RandomPersonState {
  RandomPersonInitial();
}

class RandomLoaded extends RandomPersonState {
  final Random_models model;
  RandomLoaded(this.model);
}

class RandomError extends RandomPersonState {
  final RandomExceptions message;
  RandomError(this.message);
}
