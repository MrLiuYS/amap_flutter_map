import 'types.dart';

class AmapSubPOI {
  String? address;
  String? uid;
  num? distance;
  AmapPoint? location;
  String? sname;
  String? subtype;
  String? name;

  AmapSubPOI(
      {this.address,
      this.uid,
      this.distance,
      this.location,
      this.sname,
      this.subtype,
      this.name});

  AmapSubPOI.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    uid = json['uid'];
    distance = json['distance'];
    location = json['location'] != null
        ? new AmapPoint.fromJson(json['location'])
        : null;
    sname = json['sname'];
    subtype = json['subtype'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['uid'] = this.uid;
    data['distance'] = this.distance;
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    data['sname'] = this.sname;
    data['subtype'] = this.subtype;
    data['name'] = this.name;
    return data;
  }
}
