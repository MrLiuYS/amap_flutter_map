class AmapPoint {
  num? latitude;
  num? longitude;

  AmapPoint({this.latitude, this.longitude});

  AmapPoint.fromJson(Map<String, dynamic> json) {
    latitude = num.parse(json['latitude'].toString());
    longitude = num.parse(json['longitude'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}
