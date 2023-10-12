import 'types.dart';

class AMapDrivingCalRouteSearchResponse {
  num? count;
  AMapDrivingRoute? route;

  AMapDrivingCalRouteSearchResponse({this.count, this.route});

  AMapDrivingCalRouteSearchResponse.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    route = json['route'] != null
        ? new AMapDrivingRoute.fromJson(json['route'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    if (this.route != null) {
      data['route'] = this.route!.toJson();
    }
    return data;
  }
}

class AMapDrivingRoute {
  List<AMapDrivingPath>? paths;
  AmapPoint? destination;
  num? taxiCost;
  AmapPoint? origin;

  AMapDrivingRoute({this.paths, this.destination, this.taxiCost, this.origin});

  AMapDrivingRoute.fromJson(Map<String, dynamic> json) {
    if (json['paths'] != null) {
      paths = <AMapDrivingPath>[];
      json['paths'].forEach((v) {
        paths!.add(new AMapDrivingPath.fromJson(v));
      });
    }
    destination = json['destination'] != null
        ? new AmapPoint.fromJson(json['destination'])
        : null;
    taxiCost = json['taxiCost'];
    origin =
        json['origin'] != null ? new AmapPoint.fromJson(json['origin']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.paths != null) {
      data['paths'] = this.paths!.map((v) => v.toJson()).toList();
    }
    if (this.destination != null) {
      data['destination'] = this.destination!.toJson();
    }
    data['taxiCost'] = this.taxiCost;
    if (this.origin != null) {
      data['origin'] = this.origin!.toJson();
    }
    return data;
  }
}

class AMapDrivingPath {
  num? restriction;
  String? polyline;
  num? distance;
  List<AMapDrivingStep>? steps;
  num? totalTrafficLights;
  num? duration;
  String? strategy;
  num? tollDistance;
  num? tolls;

  AMapDrivingPath(
      {this.restriction,
      this.polyline,
      this.distance,
      this.steps,
      this.totalTrafficLights,
      this.duration,
      this.strategy,
      this.tollDistance,
      this.tolls});

  AMapDrivingPath.fromJson(Map<String, dynamic> json) {
    restriction = json['restriction'];
    polyline = json['polyline'];
    distance = json['distance'];
    if (json['steps'] != null) {
      steps = <AMapDrivingStep>[];
      json['steps'].forEach((v) {
        steps!.add(new AMapDrivingStep.fromJson(v));
      });
    }
    totalTrafficLights = json['totalTrafficLights'];
    duration = json['duration'];
    strategy = json['strategy'];
    tollDistance = json['tollDistance'];
    tolls = json['tolls'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['restriction'] = this.restriction;
    data['polyline'] = this.polyline;
    data['distance'] = this.distance;
    if (this.steps != null) {
      data['steps'] = this.steps!.map((v) => v.toJson()).toList();
    }
    data['totalTrafficLights'] = this.totalTrafficLights;
    data['duration'] = this.duration;
    data['strategy'] = this.strategy;
    data['tollDistance'] = this.tollDistance;
    data['tolls'] = this.tolls;
    return data;
  }
}

class AMapDrivingStep {
  String? orientation;
  String? assistantAction;
  List<AMapDrivingCity>? cities;
  num? tollDistance;
  String? tollRoad;
  String? road;
  String? action;
  num? totalTrafficLights;
  String? instruction;
  String? polyline;
  List<AMapDrivingTmc>? tmcs;
  num? duration;
  num? distance;
  num? tolls;

  AMapDrivingStep(
      {this.orientation,
      this.assistantAction,
      this.cities,
      this.tollDistance,
      this.tollRoad,
      this.road,
      this.action,
      this.totalTrafficLights,
      this.instruction,
      this.polyline,
      this.tmcs,
      this.duration,
      this.distance,
      this.tolls});

  AMapDrivingStep.fromJson(Map<String, dynamic> json) {
    orientation = json['orientation'];
    assistantAction = json['assistantAction'];
    if (json['cities'] != null) {
      cities = <AMapDrivingCity>[];
      json['cities'].forEach((v) {
        cities!.add(new AMapDrivingCity.fromJson(v));
      });
    }
    tollDistance = json['tollDistance'];
    tollRoad = json['tollRoad'];
    road = json['road'];
    action = json['action'];
    totalTrafficLights = json['totalTrafficLights'];
    instruction = json['instruction'];
    polyline = json['polyline'];
    if (json['tmcs'] != null) {
      tmcs = <AMapDrivingTmc>[];
      json['tmcs'].forEach((v) {
        tmcs!.add(new AMapDrivingTmc.fromJson(v));
      });
    }
    duration = json['duration'];
    distance = json['distance'];
    tolls = json['tolls'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['orientation'] = this.orientation;
    data['assistantAction'] = this.assistantAction;
    if (this.cities != null) {
      data['cities'] = this.cities!.map((v) => v.toJson()).toList();
    }
    data['tollDistance'] = this.tollDistance;
    data['tollRoad'] = this.tollRoad;
    data['road'] = this.road;
    data['action'] = this.action;
    data['totalTrafficLights'] = this.totalTrafficLights;
    data['instruction'] = this.instruction;
    data['polyline'] = this.polyline;
    if (this.tmcs != null) {
      data['tmcs'] = this.tmcs!.map((v) => v.toJson()).toList();
    }
    data['duration'] = this.duration;
    data['distance'] = this.distance;
    data['tolls'] = this.tolls;
    return data;
  }
}

class AMapDrivingCity {
  String? citycode;
  num? aNum;
  List<AMapDrivingDistrict>? districts;
  String? city;
  String? adcode;

  AMapDrivingCity(
      {this.citycode, this.aNum, this.districts, this.city, this.adcode});

  AMapDrivingCity.fromJson(Map<String, dynamic> json) {
    citycode = json['citycode'];
    aNum = json['num'];
    if (json['districts'] != null) {
      districts = <AMapDrivingDistrict>[];
      json['districts'].forEach((v) {
        districts!.add(new AMapDrivingDistrict.fromJson(v));
      });
    }
    city = json['city'];
    adcode = json['adcode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['citycode'] = this.citycode;
    data['num'] = this.aNum;
    if (this.districts != null) {
      data['districts'] = this.districts!.map((v) => v.toJson()).toList();
    }
    data['city'] = this.city;
    data['adcode'] = this.adcode;
    return data;
  }
}

class AMapDrivingDistrict {
  String? citycode;
  String? level;
  String? name;
  String? adcode;

  AMapDrivingDistrict({this.citycode, this.level, this.name, this.adcode});

  AMapDrivingDistrict.fromJson(Map<String, dynamic> json) {
    citycode = json['citycode'];
    level = json['level'];
    name = json['name'];
    adcode = json['adcode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['citycode'] = this.citycode;
    data['level'] = this.level;
    data['name'] = this.name;
    data['adcode'] = this.adcode;
    return data;
  }
}

class AMapDrivingTmc {
  String? status;
  num? distance;
  String? polyline;

  AMapDrivingTmc({this.status, this.distance, this.polyline});

  AMapDrivingTmc.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    distance = json['distance'];
    polyline = json['polyline'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['distance'] = this.distance;
    data['polyline'] = this.polyline;
    return data;
  }
}
