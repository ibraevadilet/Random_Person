import 'dart:async';

import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:random_person/bloc/random_person_repository.dart';
import 'package:random_person/helpers/exeptions.dart';
import 'package:random_person/helpers/random_models.dart';
part 'random_person_event.dart';
part 'random_person_state.dart';

class RandomPersonBloc extends Bloc<RandomPersonEvent, RandomPersonState> {
  RandomRepository repository = RandomRepository();

  RandomPersonBloc(this.repository)
      : super(RandomPersonInitial(Random_models()));

  @override
  Stream<RandomPersonState> mapEventToState(
    RandomPersonEvent event,
  ) async* {
    try {
      if (event is GetRandomEvent) {
        Random_models data = await repository.getRandom();
        yield RandomPersonInitial(data);
      }
    } catch (e) {
      yield RandomError(RandomExceptions.catchError(e));
    }
  }
}
