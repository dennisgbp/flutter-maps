part of 'map_bloc.dart';

abstract class MapEvent extends Equatable {
  const MapEvent();

  @override
  List<Object> get props => [];
}

class OnMapInitializedEvent extends MapEvent {
   final GoogleMapController controller;
   const OnMapInitializedEvent(this.controller);
}

class OnStopFollowinUSerEvent extends MapEvent{}
class OnStartFollowinUSerEvent extends MapEvent{}

class UpdateUserPolylineEvent extends MapEvent {
  final List<LatLng> userLocations;
  const UpdateUserPolylineEvent(this.userLocations);
}

class OnToggleUserRoute extends MapEvent{} //si está en true lo cambia a false, o viceversa

class DisplayPolylinesEvent extends MapEvent{
  final Map<String, Polyline> polylines;
  const DisplayPolylinesEvent(this.polylines);
}