import 'types.dart';

class AMapReGeocodeSearchResponse {
  AmapRegeocode? regeocode;

  AMapReGeocodeSearchResponse({this.regeocode});

  AMapReGeocodeSearchResponse.fromJson(Map<String, dynamic> json) {
    regeocode = json['regeocode'] != null
        ? new AmapRegeocode.fromJson(json['regeocode'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.regeocode != null) {
      data['regeocode'] = this.regeocode!.toJson();
    }
    return data;
  }
}

class AmapRegeocode {
  List<AmapRoadinter>? roadinters;
  List<AmapRoad>? roads;
  AmapAddressComponent? addressComponent;
  String? formattedAddress;
  List<AmapPoi>? pois;
  List<AmapAoi>? aois;

  AmapRegeocode(
      {this.roadinters,
      this.roads,
      this.addressComponent,
      this.formattedAddress,
      this.pois,
      this.aois});

  AmapRegeocode.fromJson(Map<String, dynamic> json) {
    if (json['roadinters'] != null) {
      roadinters = <AmapRoadinter>[];
      json['roadinters'].forEach((v) {
        roadinters!.add(new AmapRoadinter.fromJson(v));
      });
    }
    if (json['roads'] != null) {
      roads = <AmapRoad>[];
      json['roads'].forEach((v) {
        roads!.add(new AmapRoad.fromJson(v));
      });
    }
    addressComponent = json['addressComponent'] != null
        ? new AmapAddressComponent.fromJson(json['addressComponent'])
        : null;
    formattedAddress = json['formattedAddress'];
    if (json['pois'] != null) {
      pois = <AmapPoi>[];
      json['pois'].forEach((v) {
        pois!.add(new AmapPoi.fromJson(v));
      });
    }
    if (json['aois'] != null) {
      aois = <AmapAoi>[];
      json['aois'].forEach((v) {
        aois!.add(new AmapAoi.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.roadinters != null) {
      data['roadinters'] = this.roadinters!.map((v) => v.toJson()).toList();
    }
    if (this.roads != null) {
      data['roads'] = this.roads!.map((v) => v.toJson()).toList();
    }
    if (this.addressComponent != null) {
      data['addressComponent'] = this.addressComponent!.toJson();
    }
    data['formattedAddress'] = this.formattedAddress;
    if (this.pois != null) {
      data['pois'] = this.pois!.map((v) => v.toJson()).toList();
    }
    if (this.aois != null) {
      data['aois'] = this.aois!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AmapRoadinter {
  String? firstId;
  String? secondId;
  String? firstName;
  String? secondName;
  AmapPoint? location;
  num? distance;
  String? direction;

  AmapRoadinter(
      {this.firstId,
      this.secondId,
      this.firstName,
      this.secondName,
      this.location,
      this.distance,
      this.direction});

  AmapRoadinter.fromJson(Map<String, dynamic> json) {
    firstId = json['firstId'];
    secondId = json['secondId'];
    firstName = json['firstName'];
    secondName = json['secondName'];
    location = json['location'] != null
        ? new AmapPoint.fromJson(json['location'])
        : null;
    distance = AmapFlutterBaseUtil.tsType<num>(json['distance']);
    direction = json['direction'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstId'] = this.firstId;
    data['secondId'] = this.secondId;
    data['firstName'] = this.firstName;
    data['secondName'] = this.secondName;
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    data['distance'] = this.distance;
    data['direction'] = this.direction;
    return data;
  }
}

class AmapRoad {
  AmapPoint? location;
  String? uid;
  String? name;
  num? distance;
  String? direction;

  AmapRoad({this.location, this.uid, this.name, this.distance, this.direction});

  AmapRoad.fromJson(Map<String, dynamic> json) {
    location = json['location'] != null
        ? new AmapPoint.fromJson(json['location'])
        : null;
    uid = json['uid'];
    name = json['name'];
    distance = AmapFlutterBaseUtil.tsType<num>(json['distance']);
    direction = json['direction'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['distance'] = this.distance;
    data['direction'] = this.direction;
    return data;
  }
}

class AmapAddressComponent {
  String? neighborhood;
  String? building;
  String? province;
  String? countryCode;
  List<AmapBusinessArea>? businessAreas;
  String? city;
  String? citycode;
  String? district;
  String? adcode;
  AmapStreetNumber? streetNumber;
  String? country;
  String? township;
  String? towncode;

  AmapAddressComponent(
      {this.neighborhood,
      this.building,
      this.province,
      this.countryCode,
      this.businessAreas,
      this.city,
      this.citycode,
      this.district,
      this.adcode,
      this.streetNumber,
      this.country,
      this.township,
      this.towncode});

  AmapAddressComponent.fromJson(Map<String, dynamic> json) {
    neighborhood = json['neighborhood'];
    building = json['building'];
    province = json['province'];
    countryCode = json['countryCode'];
    if (json['businessAreas'] != null) {
      businessAreas = <AmapBusinessArea>[];
      json['businessAreas'].forEach((v) {
        businessAreas!.add(new AmapBusinessArea.fromJson(v));
      });
    }
    city = json['city'];
    citycode = json['citycode'];
    district = json['district'];
    adcode = json['adcode'];
    streetNumber = json['streetNumber'] != null
        ? new AmapStreetNumber.fromJson(json['streetNumber'])
        : null;
    country = json['country'];
    township = json['township'];
    towncode = json['towncode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['neighborhood'] = this.neighborhood;
    data['building'] = this.building;
    data['province'] = this.province;
    data['countryCode'] = this.countryCode;
    if (this.businessAreas != null) {
      data['businessAreas'] =
          this.businessAreas!.map((v) => v.toJson()).toList();
    }
    data['city'] = this.city;
    data['citycode'] = this.citycode;
    data['district'] = this.district;
    data['adcode'] = this.adcode;
    if (this.streetNumber != null) {
      data['streetNumber'] = this.streetNumber!.toJson();
    }
    data['country'] = this.country;
    data['township'] = this.township;
    data['towncode'] = this.towncode;
    return data;
  }
}

class AmapBusinessArea {
  String? name;
  AmapPoint? location;

  AmapBusinessArea({this.name, this.location});

  AmapBusinessArea.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    location = json['location'] != null
        ? new AmapPoint.fromJson(json['location'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    return data;
  }
}

class AmapStreetNumber {
  String? direction;
  String? number;
  String? street;
  AmapPoint? location;
  num? distance;

  AmapStreetNumber(
      {this.direction, this.number, this.street, this.location, this.distance});

  AmapStreetNumber.fromJson(Map<String, dynamic> json) {
    direction = json['direction'];
    number = json['number'];
    street = json['street'];
    location = json['location'] != null
        ? new AmapPoint.fromJson(json['location'])
        : null;
    distance = AmapFlutterBaseUtil.tsType<num>(json['distance']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['direction'] = this.direction;
    data['number'] = this.number;
    data['street'] = this.street;
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    data['distance'] = this.distance;
    return data;
  }
}
