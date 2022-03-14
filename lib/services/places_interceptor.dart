import 'package:dio/dio.dart';


class PlacesInterceptor extends Interceptor {
  
  final accessToken = 'pk.eyJ1IjoiZGVubmlzZ2JwIiwiYSI6ImNsMG1zcjFybDE5b2IzbHFrb2p2am1tZ2cifQ.cv6-q0EErh8TNsbFWIlgaQ';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    
    options.queryParameters.addAll({
      'access_token': accessToken,
      'language': 'es',
    });


    super.onRequest(options, handler);
  }

}
