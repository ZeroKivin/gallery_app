import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'interceptor/api_key_interceptor.dart';
import 'interceptor/format_interceptor.dart';

final class NetworkManager {
  Dio? _defaultDio;

  Dio get defaultDio => _defaultDio ??= _createDefaultDio();

  Dio _createDefaultDio() {
    const Duration timeout = Duration(seconds: 30);

    final dio = Dio(
      BaseOptions(
        connectTimeout: timeout,
        receiveTimeout: timeout,
        sendTimeout: timeout,
        baseUrl: 'https://api.flickr.com/services',
        contentType: 'application/json',
      ),
    );

    dio.interceptors.addAll([
      ApiKeyInterceptor(),
      FormatInterceptor(),
      PrettyDioLogger(),
    ]);

    return dio;
  }
}
