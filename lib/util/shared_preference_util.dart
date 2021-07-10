// //****************************************************
// //  shared_preference_util.dart
// //  portfolio_dahun
// //
// //  Created by Dahun Jeong on 04/06/2021.
// //  Copyright © 2021 Dahun Jeong. All rights reserved.
// //****************************************************
//
//
// class SharedPreferenceUtil {
//   static saveIntData(String key, int data) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setInt(key, data);
//     // Logger().log(Level.debug, '$data saved');
//   }
//
//   static loadIntData(String key, Function(int data) after) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     after(prefs.getInt(key) ?? 0);
//   }
//
//   static saveDoubleData(String key, double data) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setDouble(key, data);
//     // Logger().log(Level.debug, '$data saved');
//   }
//
//   static loadDoubleData(String key, Function(double data) after) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     after(prefs.getDouble(key) ?? 0.0);
//   }
//
//   static saveBoolData(String key, bool data) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setBool(key, data);
//     // Logger().log(Level.debug, '$data saved');
//   }
//
//   static loadBoolData(String key, Function(bool data) after) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     after(prefs.getBool(key) ?? false);
//   }
//
//   static saveStringData(String key, String data) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setString(key, data);
//     // Logger().log(Level.debug, data + ' saved');
//   }
//
//   static loadStringData(String key, Function(String data) after) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     after(prefs.get(key) ?? "");
//   }
//
//   static saveStringToListData(String key, String data) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     List<String> list = prefs.getStringList(key) ?? [];
//     list.add(data);
//     prefs.setStringList(key, list);
//     // Logger().log(Level.debug, data + ' saved');
//   }
//
//   static loadStringListData(
//       String key, Function(List<String> data) after) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     after(prefs.getStringList(key) ?? []);
//   }
//
//   static saveListData(String key, List list) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setStringList(key, list);
//   }
//
//   static removeData(String key) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.remove(key);
//   }
// }
