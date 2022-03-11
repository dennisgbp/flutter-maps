part of 'map_bloc.dart';

class MapState extends Equatable {
  final bool isMapInitialized;
  final bool isFollowinUser;
  final bool showMyRoute;

  //Polylines
  final Map<String, Polyline> polylines;
  /*
  * 'mi ruta:{
  * id:  polylineID Google
  * points: [ [lat, lng], [123123, 123123], [123123, 123123] ]
  * width: 3
  * color: black87
  * */

  const MapState({
        this.isMapInitialized = false,
        this.isFollowinUser = true,
        this.showMyRoute = true,
        Map<String, Polyline>? polylines
      }): polylines = polylines ?? const {};


  MapState copyWith({
    bool? isMapInitialized,
    bool? isFollowinUser,
    bool? showMyRoute,
    Map<String, Polyline>? polylines
  }) =>
      MapState(
        isMapInitialized: isMapInitialized ?? this.isMapInitialized,
        isFollowinUser: isFollowinUser ?? this.isFollowinUser,
        showMyRoute: showMyRoute ?? this.showMyRoute,
        polylines: polylines ?? this.polylines,
      );

  @override
  List<Object> get props => [isMapInitialized, isFollowinUser, showMyRoute, polylines];
}
