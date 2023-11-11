import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

Dio? _dio;

Dio dioInstance() {
  if (_dio == null) {
    BaseOptions options = BaseOptions();
    _dio = Dio(options);

    (_dio!.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return true;
      };
      return client;
    };

    _dio!.interceptors.add(PrettyDioLogger());
  }

  return _dio!;
}
