import 'types.dart';

class AMapPOIKeywordsSearchResponse {
  int? count;
  List<AmapPoi>? pois;

  AMapPOIKeywordsSearchResponse({this.count, this.pois});

  AMapPOIKeywordsSearchResponse.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    if (json['pois'] != null) {
      pois = <AmapPoi>[];
      json['pois'].forEach((v) {
        pois!.add(new AmapPoi.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    if (this.pois != null) {
      data['pois'] = this.pois!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
