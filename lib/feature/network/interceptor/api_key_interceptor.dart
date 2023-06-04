import 'package:dio/dio.dart';

import 'interceptor_query.dart';

const apiKey = 'ab8f124c472c278cac8c15c4fa40def7';

final class ApiKeyInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters[InterceptorQuery.apikey] = apiKey;

    super.onRequest(options, handler);
  }
}
