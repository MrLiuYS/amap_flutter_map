import 'types.dart';

class AMapReGeocodeSearchRequest {
  ///是否返回扩展信息，默认NO。
  bool? requireExtension;

  ///中心点坐标。
  AmapPoint? location;

  ///每页记录数, 范围1-25, [default = 20]
  int? radius;

  ///指定返回结果poi数组中的POI类型，在requireExtension=YES时生效。输入为typecode, 支持传入多个typecode, 多值时用“|”分割
  String? poitype;

  ///distance 按距离返回,score 按权重返回，仅海外生效（since 7.4.0）
  String? mode;

  AMapReGeocodeSearchRequest(
      {required this.location,
      this.requireExtension,
      this.radius,
      this.poitype,
      this.mode});

  AMapReGeocodeSearchRequest.fromJson(Map<String, dynamic> json) {
    location =
        json['location'] != null ? AmapPoint.fromJson(json['origin']) : null;
    requireExtension = json['requireExtension'];
    radius = json['radius'];
    poitype = json['poitype'];
    mode = json['mode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    data['requireExtension'] = this.requireExtension;
    data['radius'] = this.radius;
    data['poitype'] = this.poitype;
    data['mode'] = this.mode;
    return AmapFlutterBaseUtil.removeNullsFromMap(data).cast();
  }
}
