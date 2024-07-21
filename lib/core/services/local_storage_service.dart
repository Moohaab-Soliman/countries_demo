import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

// dynamic myDateSerializer(dynamic object) {
//   if (object is DateTime) {
//     return object.toIso8601String();
//   }
//   return object;
// }

class LocalStorageService<T> {
  final SharedPreferences sharedPreferences;
  final String key;

  LocalStorageService({required this.sharedPreferences, required this.key});

  Future<void> saveToLocalStorage(T model) async {
    if (!sharedPreferences.containsKey(key)) {
      await sharedPreferences.setString(key, json.encode(model));
    } else {
      await sharedPreferences.remove(key);
      await sharedPreferences.setString(key, json.encode(model));
    }
  }

  Future<T?> getFromLocalStorage() async {
    if (sharedPreferences.containsKey(key)) {
      final jsonString = sharedPreferences.getString(key);
      if (jsonString != null) {
        return json.decode(jsonString) as T;
      }
    }
    return null;
  }

  List<String> getAllFromLocalStorage() {
    final Set<String> keys = sharedPreferences.getKeys();
    List<String> listString = [];

    for (String key in keys) {
      listString.add(sharedPreferences.getString(key)!);
    }

    return listString;
  }
}
