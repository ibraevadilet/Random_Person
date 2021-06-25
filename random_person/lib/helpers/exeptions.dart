import 'package:dio/dio.dart';

class RandomExceptions {
  String? message;

  RandomExceptions({this.message});

  static RandomExceptions catchError(dynamic error) {
    if (error is DioError) {
      if (error.type == DioErrorType.connectTimeout) {
        return RandomExceptions(message: "Время ожидания истекло");
      } else if (error.type == DioErrorType.response) {
        return RandomExceptions(message: "Ошибка в системе");
      }
    } else {
      return RandomExceptions(message: "Произошла системная ошибка");
    }
    return RandomExceptions(message: "Произошла ошибка сервера");
  }
}
