import 'package:random_person/bloc/random_person_provider.dart';
import 'package:random_person/helpers/random_models.dart';

class RandomRepository {
  Future<Random_models> getRandom() {
    RandomProvider provider = RandomProvider();
    return provider.getRandom();
  }
}
