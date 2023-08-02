import 'dart:async';
export 'dart:io';
export 'dart:developer';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter_tecnic_proof/core/constants.dart';
import 'package:flutter_tecnic_proof/core/http_service.dart';

class HttpService {
  HttpService();
  final Dio _client = Dio(BaseOptions(responseType: ResponseType.plain));
  final evaluator = DefaultRetryEvaluator(defaultRetryableStatuses);
  initInteceptors() {
    _client.options.connectTimeout = Constants.defaultTimeOut;
    _client.options.receiveTimeout = Constants.defaultReceiveTimeOut;
    _client.interceptors.addAll([
      DioCacheInterceptor(
        options: CacheOptions(
          store: HiveCacheStore(''),
          policy: CachePolicy.refreshForceCache,
          maxStale: Constants.timeToCache,
          hitCacheOnErrorExcept: Constants.hitCacheOnError,
          allowPostMethod: false,
          priority: CachePriority.high,
        ),
      ),
      RetryInterceptor(
        dio: _client,
        logPrint: log,
        retryDelays: _totalRetryDuration(),
        retries: Constants.totalRetry,
        retryEvaluator: evaluator.evaluate,
      ),
    ]);

    (_client.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }

  List<Duration> _totalRetryDuration() {
    List<Duration> totalDurationRetry = [];
    for (int i = 0; i < Constants.totalRetry; i++) {
      totalDurationRetry.add(Constants.retryDelay);
    }
    return totalDurationRetry;
  }

  Future<Response> get({
    required String endpoint,
    Map<String, String>? headers,
    Map<String, dynamic>? arguments,
    String v = '',
    String? differentBaseUrl,
    Options? options,
  }) async {
    try {
      String uri = endpoint;
      return await _client.get(
        uri,
        queryParameters: arguments,
        options: Options(
          responseType: ResponseType.plain,
          headers: headers,
        ),
      );
    } catch (error) {
      rethrow;
    }
  }
}
