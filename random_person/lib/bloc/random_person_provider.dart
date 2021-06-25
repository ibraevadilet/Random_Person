import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:random_person/helpers/api_requester.dart';
import 'package:random_person/helpers/exeptions.dart';
import 'package:random_person/helpers/random_models.dart';

class RandomProvider {
  Future<Random_models> getRandom() async {
    try {
      ApiRequester requester = ApiRequester();
      Response response = await requester.toGet();
      if (response.statusCode == 200) {
        return Random_models.fromJson(response.data);
      }
      throw RandomExceptions.catchError(response);
    } catch (e) {
      throw RandomExceptions.catchError(e);
    }
  }
}
