import 'types.dart';

class AmapPoi {
  AmapPoint? enterLocation;
  AmapPoint? location;
  String? district;
  String? province;
  String? typecode;
  String? tel;
  bool? hasIndoorMap;
  String? businessArea;
  List<AmapImage>? images;
  String? parkingType;
  String? city;
  String? adcode;
  String? name;
  String? type;
  List<AmapSubPOI>? subPOIs;
  String? shopID;
  String? gridcode;
  String? uid;
  String? website;
  String? pcode;
  num? distance;
  String? email;
  AmapExtensionInfo? extensionInfo;
  String? direction;
  String? citycode;
  String? postcode;
  String? address;

  AmapPoi(
      {this.enterLocation,
      this.location,
      this.district,
      this.province,
      this.typecode,
      this.tel,
      this.hasIndoorMap,
      this.businessArea,
      this.images,
      this.parkingType,
      this.city,
      this.adcode,
      this.name,
      this.type,
      this.subPOIs,
      this.shopID,
      this.gridcode,
      this.uid,
      this.website,
      this.pcode,
      this.distance,
      this.email,
      this.extensionInfo,
      this.direction,
      this.citycode,
      this.postcode,
      this.address});

  AmapPoi.fromJson(Map<String, dynamic> json) {
    enterLocation = json['enterLocation'] != null
        ? new AmapPoint.fromJson(json['enterLocation'])
        : null;
    location = json['location'] != null
        ? new AmapPoint.fromJson(json['location'])
        : null;
    district = json['district'];
    province = json['province'];
    typecode = json['typecode'];
    tel = json['tel'];
    hasIndoorMap = json['hasIndoorMap'];
    businessArea = json['businessArea'];
    if (json['images'] != null) {
      images = <AmapImage>[];
      json['images'].forEach((v) {
        images!.add(new AmapImage.fromJson(v));
      });
    }
    parkingType = json['parkingType'];
    city = json['city'];
    adcode = json['adcode'];
    name = json['name'];
    type = json['type'];
    if (json['subPOIs'] != null) {
      subPOIs = <AmapSubPOI>[];
      json['subPOIs'].forEach((v) {
        subPOIs!.add(new AmapSubPOI.fromJson(v));
      });
    }
    shopID = json['shopID'];
    gridcode = json['gridcode'];
    uid = json['uid'];
    website = json['website'];
    pcode = json['pcode'];
    distance = json['distance'];
    email = json['email'];
    extensionInfo = json['extensionInfo'] != null
        ? new AmapExtensionInfo.fromJson(json['extensionInfo'])
        : null;
    direction = json['direction'];
    citycode = json['citycode'];
    postcode = json['postcode'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.enterLocation != null) {
      data['enterLocation'] = this.enterLocation!.toJson();
    }
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    data['district'] = this.district;
    data['province'] = this.province;
    data['typecode'] = this.typecode;
    data['tel'] = this.tel;
    data['hasIndoorMap'] = this.hasIndoorMap;
    data['businessArea'] = this.businessArea;
    if (this.images != null) {
      data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    data['parkingType'] = this.parkingType;
    data['city'] = this.city;
    data['adcode'] = this.adcode;
    data['name'] = this.name;
    data['type'] = this.type;
    if (this.subPOIs != null) {
      data['subPOIs'] = this.subPOIs!.map((v) => v.toJson()).toList();
    }
    data['shopID'] = this.shopID;
    data['gridcode'] = this.gridcode;
    data['uid'] = this.uid;
    data['website'] = this.website;
    data['pcode'] = this.pcode;
    data['distance'] = this.distance;
    data['email'] = this.email;
    if (this.extensionInfo != null) {
      data['extensionInfo'] = this.extensionInfo!.toJson();
    }
    data['direction'] = this.direction;
    data['citycode'] = this.citycode;
    data['postcode'] = this.postcode;
    data['address'] = this.address;
    return data;
  }
}
