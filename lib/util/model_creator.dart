// //****************************************************
// //  model_creator.dart
// //  portfolio_dahun
// //
// //  Created by Dahun Jeong on 04/06/2021.
// //  Copyright © 2021 Dahun Jeong. All rights reserved.
// //****************************************************
//
// import 'package:onemoapoint_ceo/model/app_version_model.dart';
// import 'package:onemoapoint_ceo/model/history_model.dart';
// import 'package:onemoapoint_ceo/model/login_model.dart';
// import 'package:onemoapoint_ceo/model/menu_model.dart';
// import 'package:onemoapoint_ceo/model/menu_split_model.dart';
// import 'package:onemoapoint_ceo/model/order_history_detail_model.dart';
// import 'package:onemoapoint_ceo/model/order_history_model.dart';
// import 'package:onemoapoint_ceo/model/result_model.dart';
// import 'package:onemoapoint_ceo/model/search_model.dart';
// import 'package:onemoapoint_ceo/model/search_result_model.dart';
//
// abstract class ModelCreator<T> {
//   T fromJson(Map<String, dynamic> json);
//
//   static final _constructors = {
//     ResultModel: () => ResultModel(),
//     LoginModel: () => LoginModel(),
//     SearchModel: () => SearchModel(),
//     SearchResultModel: () => SearchResultModel(),
//     HistoryModel: () => HistoryModel(),
//     AppVersionModel: () => AppVersionModel(),
//     OrderHistoryModel: () => OrderHistoryModel(),
//     OrderHistoryDetailModel: () => OrderHistoryDetailModel(),
//     MenuSplitModel: () => MenuSplitModel(),
//     MenuModel: () => MenuModel(),
//   };
//
//   static dynamic createInstance(Type type) {
//     return _constructors[type]();
//   }
// }
