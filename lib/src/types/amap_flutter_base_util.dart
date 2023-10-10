class AmapFlutterBaseUtil {
  static Map<dynamic, dynamic> removeNullsFromMap(Map<dynamic, dynamic> json) =>
      json
        ..removeWhere((dynamic key, dynamic value) => value == null)
        ..map<dynamic, dynamic>(
            (key, value) => MapEntry(key, removeNulls(value)));

  static List removeNullsFromList(List list) => list
    ..removeWhere((value) => value == null)
    ..map((e) => removeNulls(e)).toList();

  static removeNulls(e) => (e is List)
      ? removeNullsFromList(e)
      : (e is Map ? removeNullsFromMap(e) : e);
}
