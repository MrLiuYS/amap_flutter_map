import 'types.dart';

class AmapAoi {
  num? area;
  String? uid;
  String? name;
  AmapPoint? location;
  String? adcode;

  AmapAoi({this.area, this.uid, this.name, this.location, this.adcode});

  AmapAoi.fromJson(Map<String, dynamic> json) {
    area = AmapFlutterBaseUtil.tsType<num>(json['area']);
    uid = json['uid'];
    name = json['name'];
    location = json['location'] != null
        ? new AmapPoint.fromJson(json['location'])
        : null;
    adcode = json['adcode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['area'] = this.area;
    data['uid'] = this.uid;
    data['name'] = this.name;
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    data['adcode'] = this.adcode;
    return data;
  }
}
