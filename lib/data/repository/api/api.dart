import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

//https://jsonplaceholder.typicode.com/posts/
class API {
  // DIO for Network calling

  final Dio _dio = Dio();

  // Getter method
  Dio get sendRequest => _dio;

  API() {
    _dio.options.baseUrl = "https://jsonplaceholder.typicode.com";
    _dio.interceptors.add(PrettyDioLogger());
  }
}
