import 'package:geolocator/geolocator.dart';

class GeolocatorServ {
  var geolocator = Geolocator();

  Future<Position> getlocation() async {
    return await geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        locationPermissionLevel: GeolocationPermission.location);
  }

  Future<double> getDestance(double startLatitude, double startLongitude,
      double endLatitude, endLongitude) async {
    return await geolocator.distanceBetween(
        startLatitude, startLongitude, endLatitude, endLongitude);
  }
}
