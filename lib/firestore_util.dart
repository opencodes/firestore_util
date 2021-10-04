library firestore_util;

/// A Firestore Util Class.
class FirestoreUtil {
  /// Returns parsed json as object format.
  static Map<String, dynamic> parse(dynamic document) {
    Map<String, dynamic> res = {};
    if (document["fields"] != null && (document["fields"] is Map)) {
      Map<String, dynamic> fieldMap = document["fields"];
      for (MapEntry<String, dynamic> entry in fieldMap.entries) {
        Map<String, dynamic> fieldValueMap = entry.value;
        if (fieldValueMap is Map) {
          for (MapEntry<String, dynamic> fieldValue in fieldValueMap.entries) {
            res[entry.key] = fieldValue.value;
          }
        }
      }
    }
    return res;
  }

  /// Returns formated map as firestore format.
  static Map<String, dynamic> toFirestoreFormat(Map<String, dynamic> obj) {
    Map<String, dynamic> res = {};
    if (obj.entries.isNotEmpty) {
      obj.forEach((k, v) {
        if (v.runtimeType == String) {
          res[k] = {'stringValue': v};
        }
        if (v.runtimeType == bool) {
          res[k] = {'booleanValue': v};
        }
        if (v.runtimeType == int) {
          res[k] = {'integerValue': v};
        }
        if (v.runtimeType == DateTime) {
          res[k] = {'timestampValue': v};
        }
        if (v.runtimeType == Null) {
          res[k] = {'nullValue': v};
        }
      });
    }
    return res;
  }
}
