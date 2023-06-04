import 'package:dio/dio.dart';

import 'interceptor_query.dart';

final class FormatInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters[InterceptorQuery.format] = 'json';
    options.queryParameters[InterceptorQuery.noJsonCallback] = 1;

    super.onRequest(options, handler);
  }
}
