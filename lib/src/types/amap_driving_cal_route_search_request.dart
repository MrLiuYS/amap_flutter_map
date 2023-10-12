import 'types.dart';

class AMapDrivingCalRouteSearchRequest {
  ///出发点
  AmapPoint? origin;

  ///目的地
  AmapPoint? destination;

  /// 驾车导航策略，默认策略为32。
  // 32：默认，高德推荐，同高德地图APP默认
  // 33：躲避拥堵
  // 34：高速优先
  // 35：不走高速
  // 36：少收费
  // 37：大路优先
  // 38：速度最快
  // 39：躲避拥堵＋高速优先
  // 40：躲避拥堵＋不走高速
  // 41：躲避拥堵＋少收费
  // 42：少收费＋不走高速
  // 43：躲避拥堵＋少收费＋不走高速
  // 44：躲避拥堵＋大路优先
  // 45：躲避拥堵＋速度最快
  int? strategy;

  ///途经点 AMapGeoPoint 数组，最多支持16个途经点
  List<AmapPoint>? waypoints;

  ///避让区域 AMapGeoPolygon 数组，目前最多支持32个避让区域，每个区域16个点
  List<AmapPoint>? avoidpolygons;

  ///避让道路名
  String? avoidroad;

  ///出发点 POI ID
  String? originId;

  ///目的地 POI ID
  String? destinationId;

  ///出发点POI类型编码，此值可以辅助更精准的起点算路，0：普通道路、1：高架上、2：高架下、3：主路、4：辅路、5：隧道、7：环岛、9：停车场内部
  String? origintype;

  ///目的地POI类型编码
  String? destinationtype;

  ///是否返回扩展信息，默认为 NO
  bool? requireExtension;

  ///车牌信息，如京AHA322，支持6位传统车牌和7位新能源车牌，用于判断是否限行
  String? plate;

  ///使用轮渡,0使用1不使用,默认为0使用
  int? ferry;

  AMapDrivingCalRouteSearchRequest(
      {required this.origin,
      required this.destination,
      this.strategy,
      this.waypoints,
      this.avoidpolygons,
      this.avoidroad,
      this.originId,
      this.destinationId,
      this.requireExtension,
      this.origintype,
      this.destinationtype,
      this.plate,
      this.ferry});

  AMapDrivingCalRouteSearchRequest.fromJson(Map<String, dynamic> json) {
    origin = json['origin'] != null ? AmapPoint.fromJson(json['origin']) : null;
    destination = json['destination'] != null
        ? AmapPoint.fromJson(json['destination'])
        : null;
    strategy = json['strategy'];
    if (json['waypoints'] != null) {
      waypoints = <AmapPoint>[];
      json['waypoints'].forEach((v) {
        waypoints!.add(AmapPoint.fromJson(v));
      });
    }

    if (json['avoidpolygons'] != null) {
      avoidpolygons = <AmapPoint>[];
      json['avoidpolygons'].forEach((v) {
        avoidpolygons!.add(AmapPoint.fromJson(v));
      });
    }
    avoidroad = json['avoidroad'];
    originId = json['originId'];
    destinationId = json['destinationId'];
    origintype = json['origintype'];
    destinationtype = json['destinationtype'];
    requireExtension = json['requireExtension'];
    plate = json['plate'];
    ferry = json['ferry'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.origin != null) {
      data['origin'] = this.origin!.toJson();
    }
    if (this.destination != null) {
      data['destination'] = this.destination!.toJson();
    }
    data['strategy'] = this.strategy;
    if (this.waypoints != null) {
      data['waypoints'] = this.waypoints!.map((v) => v.toJson()).toList();
    }

    if (this.avoidpolygons != null) {
      data['avoidpolygons'] =
          this.avoidpolygons!.map((v) => v.toJson()).toList();
    }
    data['avoidroad'] = this.avoidroad;
    data['originId'] = this.originId;
    data['destinationId'] = this.destinationId;
    data['origintype'] = this.origintype;
    data['destinationtype'] = this.destinationtype;
    data['requireExtension'] = this.requireExtension;
    data['plate'] = this.plate;
    data['ferry'] = this.ferry;
    return AmapFlutterBaseUtil.removeNullsFromMap(data).cast();
  }
}
