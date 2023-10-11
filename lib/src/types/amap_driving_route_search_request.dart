import 'types.dart';

class AMapDrivingRouteSearchRequest {
  ///出发点
  AmapPoint? origin;

  ///目的地
  AmapPoint? destination;

  ///  驾车导航策略，默认策略为0。
  /// 0，速度优先（时间)；1，费用优先（不走收费路段的最快道路）；2，距离优先；3，不走快速路；4，躲避拥堵；
  /// 5，多策略（同时使用速度优先、费用优先、距离优先三个策略计算路径），其中必须说明，就算使用三个策略算路，会根据路况不固定的返回一至三条路径规划信息；
  /// 6，不走高速；7，不走高速且避免收费；8，躲避收费和拥堵；9，不走高速且躲避收费和拥堵；
  /// 10，多备选，时间最短，距离最短，躲避拥堵（考虑路况）；
  /// 11，多备选，时间最短，距离最短；
  /// 12，多备选，躲避拥堵（考虑路况）；
  /// 13，多备选，不走高速；
  /// 14，多备选，费用优先；
  /// 15，多备选，躲避拥堵，不走高速（考虑路况）；
  /// 16，多备选，费用有限，不走高速；
  /// 17，多备选，躲避拥堵，费用优先（考虑路况）；
  /// 18，多备选，躲避拥堵，不走高速，费用优先（考虑路况）；
  /// 19，多备选，高速优先；
  /// 20，多备选，高速优先，躲避拥堵（考虑路况）
  int? strategy;

  ///途经点 AMapGeoPoint 数组，最多支持16个途经点
  List<AmapPoint>? waypoints;

  ///避让区域 AMapGeoPolygon 数组，最多支持100个避让区域，每个区域16个点
  List<AmapPoint>? avoidpolygons;

  ///避让道路名
  String? avoidroad;

  ///出发点 POI ID
  String? originId;

  ///目的地 POI ID
  String? destinationId;

  ///出发点POI类型编码
  String? origintype;

  ///目的地POI类型编码
  String? destinationtype;

  ///是否返回扩展信息，默认为 NO
  bool? requireExtension;

  ///车牌省份，用汉字填入车牌省份缩写。用于判断是否限行
  String? plateProvince;

  ///车牌详情,填入除省份及标点之外的字母和数字（需大写）。用于判断是否限行。
  String? plateNumber;

  ///使用轮渡,0使用1不使用,默认为0使用
  int? ferry;

  AMapDrivingRouteSearchRequest(
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
      this.plateProvince,
      this.plateNumber,
      this.ferry});

  AMapDrivingRouteSearchRequest.fromJson(Map<String, dynamic> json) {
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
    plateProvince = json['plateProvince'];
    plateNumber = json['plateNumber'];
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
    data['plateProvince'] = this.plateProvince;
    data['plateNumber'] = this.plateNumber;
    data['ferry'] = this.ferry;
    return AmapFlutterBaseUtil.removeNullsFromMap(data).cast();
  }
}
