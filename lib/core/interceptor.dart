import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppInterceptor extends QueuedInterceptorsWrapper {
  final Dio dio;

  AppInterceptor(
    this.dio,
  );

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Add 'appid' parameter to query parameters
    const appId = '37ea9939152496e5de6ca532f93817fd';
    final updatedQueryParameters = {
      ...options.queryParameters,
      'appid': appId,
    };

    options = options.copyWith(queryParameters: updatedQueryParameters);
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    return;
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    super.onError(err, handler);
  }
}
