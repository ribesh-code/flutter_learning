import 'package:demo_kss/src/config.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HttpClient {
  HttpClient({
    required this.reader,
  }) {
    _init();
  }

  final Reader reader;
  late final Dio httpClient;
  static final BaseOptions options = BaseOptions(
    baseUrl: Config.baseURL,
    connectTimeout: 155000,
    receiveTimeout: 12000,
  );

  void _init() {
    httpClient = Dio(options);
  }
}

final httpClientProvider = Provider<Dio>((_) => throw UnimplementedError());
