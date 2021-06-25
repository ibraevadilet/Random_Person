import 'package:dio/dio.dart';
import 'package:random_person/helpers/exeptions.dart';

class ApiRequester {
  static String url = "https://randomuser.me/api/";

  Future<Dio> initDio() async {
    return Dio(BaseOptions(
      baseUrl: url,
      responseType: ResponseType.json,
      receiveTimeout: 10000,
      connectTimeout: 10000,
    ));
  }

  Future<Response> toGet() async {
    Dio dio = await initDio();
    try {
      return dio.get(url);
    } catch (e) {
      throw RandomExceptions.catchError(e);
    }
  }
}
