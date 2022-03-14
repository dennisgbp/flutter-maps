import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_app/services/services.dart';
import 'package:maps_app/models/models.dart';

class TrafficServices {
  final Dio _dioTraffic;

  final String _baseTrafficUrl = 'https://api.mapbox.com/directions/v5/mapbox';

  TrafficServices() : _dioTraffic = Dio()..interceptors.add(TrafficInterceptor()); //TODO: configurar interceptores

  Future<TrafficResponse> getCoorsStartToEnd(LatLng start, LatLng end) async {
    final coorsString =
        '${start.longitude}, ${start.latitude}, ${end.longitude}, ${end.latitude}';
    final url = '$_baseTrafficUrl/driving/$coorsString';

    final resp = await _dioTraffic.get(url);
    final data = TrafficResponse.fromMap(resp.data);

    return resp.data;
  }
}
