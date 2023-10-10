import 'amap_flutter_base_util.dart';

class AMapPOIKeywordsSearchRequest {
  ///查询关键字，多个关键字用“|”分割
  String? keywords;

  ///查询城市，可选值：cityname（中文或中文全拼）、citycode、adcode.(注：台湾省的城市一律设置为【台湾】，不具体到市。)
  String? city;

  ///类型，多个类型用“|”分割 可选值:文本分类、分类代码
  String? types;

  ///是否返回扩展信息，默认为 NO。
  bool? requireExtension;

  ///强制城市限制功能 默认NO，例如：在上海搜索天安门，如果citylimit为true，将不返回北京的天安门相关的POI
  bool? cityLimit;

  ///是否返回子POI，默认为 NO。
  bool? requireSubPOIs;

  AMapPOIKeywordsSearchRequest(
      {this.keywords,
      this.city,
      this.types,
      this.requireExtension,
      this.cityLimit,
      this.requireSubPOIs});

  AMapPOIKeywordsSearchRequest.fromJson(Map<String, dynamic> json) {
    keywords = json['keywords'];
    city = json['city'];
    types = json['types'];
    requireExtension = json['requireExtension'];
    cityLimit = json['cityLimit'];
    requireSubPOIs = json['requireSubPOIs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['keywords'] = this.keywords;
    data['city'] = this.city;
    data['types'] = this.types;
    data['requireExtension'] = this.requireExtension;
    data['cityLimit'] = this.cityLimit;
    data['requireSubPOIs'] = this.requireSubPOIs;
    return AmapFlutterBaseUtil.removeNullsFromMap(data).cast();
  }
}
