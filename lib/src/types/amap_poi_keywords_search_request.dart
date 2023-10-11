import 'types.dart';

class AMapPOIKeywordsSearchRequest {
  ///查询关键字，多个关键字用“|”分割
  String? keywords;

  ///查询城市，可选值：cityname（中文或中文全拼）、citycode、adcode.(注：台湾省的城市一律设置为【台湾】，不具体到市。)
  String? city;

  ///强制城市限制功能 默认NO，例如：在上海搜索天安门，如果citylimit为true，将不返回北京的天安门相关的POI
  bool? cityLimit;

  ///设置后，如果sortrule==0，则返回结果会按照距离此点的远近来排序,since 5.2.1
  AmapPoint? location;

  ///类型，多个类型用“|”分割 可选值:文本分类、分类代码
  String? types;

  ///排序规则, 0-距离排序；1-综合排序, 默认0
  String? sortrule;

  ///每页记录数, 范围1-25, [default = 20]
  int? offset;

  ///当前页数, 范围1-100, [default = 1]
  int? page;

  ///建筑物POI编号，传入建筑物POI之后，则只在该建筑物之内进行搜索（since 4.5.0）
  String? building;

  ///是否返回扩展信息，默认为 NO。
  bool? requireExtension;

  ///是否返回子POI，默认为 NO。
  bool? requireSubPOIs;

  AMapPOIKeywordsSearchRequest(
      {this.keywords,
      this.city,
      this.cityLimit,
      this.location,
      this.types,
      this.sortrule,
      this.offset,
      this.page,
      this.building,
      this.requireExtension,
      this.requireSubPOIs});

  AMapPOIKeywordsSearchRequest.fromJson(Map<String, dynamic> json) {
    keywords = json['keywords'];
    city = json['city'];
    cityLimit = json['cityLimit'];
    location =
        json['location'] != null ? AmapPoint.fromJson(json['location']) : null;
    types = json['types'];
    sortrule = json['sortrule'];
    offset = json['offset'];
    page = json['page'];
    building = json['building'];
    requireExtension = json['requireExtension'];
    requireSubPOIs = json['requireSubPOIs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['keywords'] = this.keywords;
    data['city'] = this.city;
    data['cityLimit'] = this.cityLimit;
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    data['types'] = this.types;
    data['sortrule'] = this.sortrule;
    data['offset'] = this.offset;
    data['page'] = this.page;
    data['building'] = this.building;
    data['requireExtension'] = this.requireExtension;
    data['requireSubPOIs'] = this.requireSubPOIs;
    return AmapFlutterBaseUtil.removeNullsFromMap(data).cast();
  }
}
