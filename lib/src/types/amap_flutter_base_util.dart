import 'dart:math';

import 'package:amap_flutter_base/amap_flutter_base.dart';

import 'types.dart';

class AmapFlutterBaseUtil {
  static Map<dynamic, dynamic> removeNullsFromMap(Map<dynamic, dynamic> json) =>
      json
        ..removeWhere((dynamic key, dynamic value) => value == null)
        ..map<dynamic, dynamic>(
            (key, value) => MapEntry(key, removeNulls(value)));

  static List removeNullsFromList(List list) => list
    ..removeWhere((value) => value == null)
    ..map((e) => removeNulls(e)).toList();

  static removeNulls(e) => (e is List)
      ? removeNullsFromList(e)
      : (e is Map ? removeNullsFromMap(e) : e);

  static LatLngBounds? adjustBoundFromPaths(List<AMapDrivingPath>? paths) {
    if (paths == null) return null;

    double south = 90;
    double west = 180;
    double north = -90;
    double east = -180;

    for (AMapDrivingPath path in paths) {
      final List<LatLng> points = <LatLng>[];

      List<String> stepPolylines = (path.polyline ?? "").split(";");

      for (var stepPolyline in stepPolylines) {
        List<String> pStep = stepPolyline.split(",");

        if (pStep.length == 2) {
          var latlng = LatLng(
            double.parse(pStep.last),
            double.parse(pStep.first),
          );

          south = min(south, latlng.latitude);
          west = min(west, latlng.longitude);

          north = max(north, latlng.latitude);
          east = max(east, latlng.longitude);

          points.add(latlng);
        }
      }
    }
    return LatLngBounds(
      southwest: LatLng(south, west),
      northeast: LatLng(north, east),
    );
  }
}
