part of 'random_person_bloc.dart';

@immutable
abstract class RandomPersonEvent {}

class GetRandomEvent extends RandomPersonEvent {
  GetRandomEvent();
}
