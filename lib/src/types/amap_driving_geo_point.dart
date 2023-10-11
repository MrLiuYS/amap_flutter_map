class AmapDrivingGeoPoint {
  double? latitude;
  double? longitude;

  AmapDrivingGeoPoint({this.latitude, this.longitude});

  AmapDrivingGeoPoint.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}
