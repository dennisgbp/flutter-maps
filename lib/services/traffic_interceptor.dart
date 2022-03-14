import 'package:dio/dio.dart';

class TrafficInterceptor extends Interceptor{
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler){
    options.queryParameters.addAll({
      'alternatives': true,
      'geometries': 'polyline6',
      'overview': 'simplified',
      'steps': false,
      'access_token': 'pk.eyJ1IjoiZGVubmlzZ2JwIiwiYSI6ImNsMG1zcjFybDE5b2IzbHFrb2p2am1tZ2cifQ.cv6-q0EErh8TNsbFWIlgaQ'
    });
    super.onRequest(options, handler);
  }
}