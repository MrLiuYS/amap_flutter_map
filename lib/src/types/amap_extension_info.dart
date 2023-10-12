class AmapExtensionInfo {
  num? cost;
  num? rating;

  AmapExtensionInfo({this.cost, this.rating});

  AmapExtensionInfo.fromJson(Map<String, dynamic> json) {
    cost = json['cost'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cost'] = this.cost;
    data['rating'] = this.rating;
    return data;
  }
}
