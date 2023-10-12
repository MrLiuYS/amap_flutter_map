import 'types.dart';

class AmapPoint {
  num? latitude;
  num? longitude;

  AmapPoint({this.latitude, this.longitude});

  AmapPoint.fromJson(Map<String, dynamic> json) {
    latitude = AmapFlutterBaseUtil.tsType<num>(json['latitude']);
    longitude = AmapFlutterBaseUtil.tsType<num>(json['longitude']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}
