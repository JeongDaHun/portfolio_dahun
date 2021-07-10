// //****************************************************
// //  netowrk_service.dart
// //  portfolio_dahun
// //
// //  Created by Dahun Jeong on 04/06/2021.
// //  Copyright © 2021 Dahun Jeong. All rights reserved.
// //****************************************************
//
// import 'dart:async';
// import 'dart:collection';
// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
// import 'package:logger/logger.dart';
// import 'package:onemoapoint_ceo/util/app_configure.dart';
// import 'package:onemoapoint_ceo/util/model_creator.dart';
//
// enum Mode {
//   GET_LOGIN,
//   GET_PERSON_FIND,
//   SAVE_PURCHASE_INFORMATION,
//   GET_HISTORY,
//   GET_PURCHASE_HISTORY,
//   GET_SALES_HISTORY,
//   SAVE_BUY_CANCEL,
//   GET_QR_CHECK,
//   GET_APP_VERSION,
//   GET_ORDER_HISTORY,
//   SAVE_ORDER_STATUS,
//   SAVE_BUSINESS_STATUS,
//   GET_ORDER_HISTORY_DETAIL,
//   GET_MENU_SPLIT,
//   GET_MENU_ITEM,
//   GET_CLIENT_MENU,
//   SAVE_MENU_SOLD_OUT_STATUS,
// }
//
// class NetworkService {
//   // <editor-fold desc="init urls, singleton">
//   static NetworkService _service = NetworkService._internal();
//
//   factory NetworkService() => _service;
//
//   NetworkService._internal();
//
//   static final String _devUrl =
//       "http://dev.onemoa.co.kr/onemoaapp_store/C000.mart?mode=";
//   static final String _productionUrl =
//       "http://app.onemoa.co.kr/onemoaapp_store/C000.mart?mode=";
//
//   final String serverUrl =
//       AppConfigure.isDevelopVersion ? _devUrl : _productionUrl;
//
//   var logger = Logger();
//
//   // </editor-fold>
//
//   Future<List<dynamic>> getList<T extends ModelCreator<T>>(
//       Mode mode, List<String> params) async {
//     String url = makeURL(mode, params);
//     // logger.log(Level.debug, url);
//     try{
//       http.Response res = await http.get(url).timeout(const Duration(seconds: 15));
//
//       if (res.statusCode == 200) {
//         List<dynamic> body = jsonDecode(res.body);
//         // logger.log(Level.debug, body);
//         var model = ModelCreator.createInstance(T);
//
//         return body.map((dynamic item) => model.fromJson(item)).toList();
//       } else {
//         // logger.wtf('Failed to load list data mode: ${EnumToString.parse(mode)}');
//         return null;
//       }
//     } on TimeoutException catch(_) {
//       // logger.log(Level.debug, url);
//     } catch(e) {
//       // print(e);
//       throw Exception(e);
//     }
//   }
//
//   Future<dynamic> getOneItem<T extends ModelCreator<T>>(
//       Mode mode, List<String> params) async {
//     String url = makeURL(mode, params);
//     // logger.log(Level.debug, url);
//     http.Response res = await http.get(url);
//
//     if (res.statusCode == 200) {
//       dynamic body = jsonDecode(res.body);
//       // logger.log(Level.debug, body);
//       var model = ModelCreator.createInstance(T);
//
//       return model.fromJson(body);
//     } else {
//       // logger.wtf('Failed to load data mode: ${EnumToString.parse(mode)}');
//       return null;
//     }
//   }
//
//   Future<List<dynamic>> getPostList<T extends ModelCreator<T>>(Mode mode, Map<String, String> params) async {
//
//     String url = makePostURL(mode);
//     try{
//
//       // Map<String, String> headers = {"Content-type": "application/json"};
//       Map<String, String> headers = new HashMap();
//       // headers['Accept'] = 'application/json';
//       // headers['Content-type'] = 'application/json';
//
//
//       Map<String, String> JsonBody = params;
//       // logger.log(Level.debug, url + params.toString());
//       // make POST request
//       final response = await http.post(url, headers: headers, body: JsonBody).timeout(const Duration(seconds: 15));
//       // check the status code for the result
//       int statusCode = response.statusCode;
//
//       // print('statusCode: '+statusCode.toString());
//       if (statusCode == 200){
//         List<dynamic> body = jsonDecode(response.body);
//         var model = ModelCreator.createInstance(T);
//         // logger.log(Level.debug, body);
//         return body.map((dynamic item) => model.fromJson(item)).toList();
//         // return model.fromJson(jsonDecode(response.body));
//       }else{
//         // logger.wtf('Failed to load list data mode: ${EnumToString.parse(mode)}');
//         return null;
//       }
//
//     } on TimeoutException catch(_) {
//       // logger.log(Level.debug, url);
//     } catch (e) {
//       throw Exception(e);
//     }
//   }
//
//   Future<dynamic> getPostOneItem<T extends ModelCreator<T>>(Mode mode, Map<String, String> params) async {
//
//     String url = makePostURL(mode);
//     try{
//
//       // Map<String, String> headers = {"Content-type": "application/json"};
//       Map<String, String> headers = new HashMap();
//       // headers['Accept'] = 'application/json';
//       // headers['Content-type'] = 'application/json';
//
//
//       Map<String, String> JsonBody = params;
//       // logger.log(Level.debug, url + params.toString());
//       // make POST request
//       final response = await http.post(url, headers: headers, body: JsonBody).timeout(const Duration(seconds: 15));
//       // check the status code for the result
//       int statusCode = response.statusCode;
//
//       if (statusCode == 200){
//         dynamic body = jsonDecode(response.body);
//         // logger.log(Level.debug, body);
//         var model = ModelCreator.createInstance(T);
//         // print(body);
//         return model.fromJson(body);
//         // return model.fromJson(jsonDecode(response.body));
//       }else{
//         // logger.wtf('Failed to load list data mode: ${EnumToString.parse(mode)}');
//         return null;
//       }
//
//     } on TimeoutException catch(_) {
//       // logger.log(Level.debug, url);
//     } catch (e) {
//       throw Exception(e);
//     }
//   }
//
//   String makeURL(Mode mode, List<String> params) {
//     switch (mode) {
//       case Mode.GET_LOGIN:
//         return serverUrl + "app_onemoa_app_store_login&userid=${params[0]}&pwd=${params[1]}&push_id=${params[2]}&phonegbn=${params[3]}";
//         // return 'http://10.10.244.101:8080/onemoaapp_store/C000.mart?mode=app_onemoa_app_store_login&userid=${params[0]}&pwd=${params[1]}&push_id=${params[2]}&phonegbn=${params[3]}';
//       case Mode.GET_PERSON_FIND:
//         return serverUrl + "app_onemoa_app_person_find&clientcode=${params[0]}&findata=${params[1]}";
//       case Mode.SAVE_PURCHASE_INFORMATION:
//         return serverUrl + 'app_onemoa_app_store_buy&clientcode=${params[0]}&personcode=${params[1]}&'
//             'totalamt=${params[2]}&addpoint=${params[3]}&'
//             'useingpoint=${params[4]}&useamount=${params[5]}&'
//             'pay_gn=${params[6]}';
//       case Mode.GET_HISTORY:
//         return serverUrl + "app_onemoa_app_store_clientbuy_list&clientcode=${params[0]}&userid=${params[1]}&finddate=${params[2]}&month_ago=${params[3]}";
//       case Mode.GET_PURCHASE_HISTORY:
//         return serverUrl + "app_onemoa_app_store_buy_list&clientcode=${params[0]}&personcode=${params[1]}&finddate=${params[2]}&month_ago=${params[3]}";
//       case Mode.SAVE_BUY_CANCEL:
//         return serverUrl + "app_onemoa_app_store_buycancel&clientcode=${params[0]}&personcode=${params[1]}&buydatekey=${params[2]}&tid=${params[3]}&pay_gn=${params[4]}&pay_gbn=${params[5]}&cancelamt=${params[6]}";
//       case Mode.GET_QR_CHECK:
//         return serverUrl + "app_onemoa_app_store_qrcode_chk&personcode=${params[0]}&qr_code=${params[1]}";
//       case Mode.GET_APP_VERSION:
//         return "http://app.onemoa.co.kr/onemoaapp/C000.mart?mode=app_onemoa_appversion";
//       case Mode.GET_ORDER_HISTORY:
//         return serverUrl + "app_onemoa_app_store_order_list&clientcode=${params[0]}&gbn=${params[1]}";
//         // return 'http://10.10.244.101:8080/onemoaapp_store/C000.mart?mode=app_onemoa_app_store_order_list&clientcode=${params[0]}&gbn=${params[1]}';
//       case Mode.GET_ORDER_HISTORY_DETAIL:
//         return serverUrl + "app_onemoa_app_store_order_list_detail&clientcode=${params[0]}&order_date=${params[1]}&order_index=${params[2]}";
//         // return 'http://10.10.244.101:8080/onemoaapp_store/C000.mart?mode=app_onemoa_app_store_order_list_detail&clientcode=${params[0]}&order_date=${params[1]}&order_index=${params[2]}';
//       case Mode.GET_MENU_SPLIT:
//         return "http://app.onemoa.co.kr/onemoaapp/C000.mart?mode=app_onemoa_clientmenusplit_list&clientcode=${params[0]}&spcial_menu_yn=${params[1]}";
//       case Mode.GET_CLIENT_MENU:
//         return "http://app.onemoa.co.kr/onemoaapp/C000.mart?mode=app_onemoa_clientmenu_list&clientcode=${params[0]}"
//                 "&spcial_menu_yn=${params[1]}&menu_split_index=${params[2]}&menu_nm=${params[3]}";
//       case Mode.SAVE_MENU_SOLD_OUT_STATUS:
//         return serverUrl + 'app_onemoa_app_store_save_menu_sold_out_status&clientcode=${params[0]}&menu_index=${params[1]}&soldout_yn=${params[2]}';
//         // return 'http://10.10.244.101:8080/onemoaapp_store/C000.mart?mode=app_onemoa_app_store_save_menu_sold_out_status&clientcode=${params[0]}&menu_index=${params[1]}&soldout_yn=${params[2]}';
//       default:
//         return "";
//     }
//   }
//
//   String makePostURL(Mode mode) {
//     switch (mode) {
//       case Mode.GET_LOGIN:
//         return serverUrl + 'app_onemoa_app_store_login';
//       case Mode.GET_PERSON_FIND:
//         return serverUrl + 'app_onemoa_app_person_find';
//       case Mode.SAVE_PURCHASE_INFORMATION:
//         return serverUrl + 'app_onemoa_app_store_buy';
//       case Mode.GET_HISTORY:
//         return serverUrl + "app_onemoa_app_store_clientbuy_list";
//       case Mode.GET_PURCHASE_HISTORY:
//         return serverUrl + "app_onemoa_app_store_buy_list";
//       case Mode.SAVE_BUY_CANCEL:
//         return serverUrl + "app_onemoa_app_store_buycancel";
//       case Mode.GET_QR_CHECK:
//         return serverUrl + "app_onemoa_app_store_qrcode_chk";
//       case Mode.GET_APP_VERSION:
//         return "http://app.onemoa.co.kr/onemoaapp/C000.mart?mode=app_onemoa_appversion";
//       case Mode.SAVE_ORDER_STATUS:
//         return 'http://file2.onemoa.co.kr:8081/v1/ceoSetOrderStatus';
//       case Mode.SAVE_BUSINESS_STATUS:
//         return 'http://file2.onemoa.co.kr:8081/v1/ceoSetBusinessStatus';
//         // return 'http://10.10.244.81:8081/v1/ceoSetBusinessStatus';
//       default:
//         return "";
//     }
//   }
// }
