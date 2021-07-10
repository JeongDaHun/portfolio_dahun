//****************************************************
//  dialog_util.dart
//  onemoapoint_ceo
//
//  Created by Dahun Jeong on 22/01/2021.
//  Copyright © 2021 Dahun Jeong. All rights reserved.
//****************************************************

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_dahun/util/onemoa_point_color.dart';
import 'package:portfolio_dahun/util/string_resource.dart';

class DialogUtil {
  late DialogResultListener dialogResultListener;
  late DialogResultListener dialogResultListener2;

  showMessageDialog(BuildContext context, String message, DialogResultListener listener) {
    dialogResultListener =  listener;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Container(
          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
          child: Text(
            message,
            style: TextStyle(
              fontSize: 14.5,
              fontFamily: FontFamily.NANUM_GOTHIC,
              color: PFColor.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
        content: FlatButton(
          child: Text("확인", style: TextStyle(
              fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.blue),
            textAlign: TextAlign.center,),
          onPressed: () => dialogResultListener.onResult(),
        ),
      ),
    );
  }

  // showAppExitDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       title: Container(
  //         margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
  //         child: Text(
  //           "앱을 종료하시겠습니까?",
  //           style: TextStyle(
  //             fontSize: 14.5,
  //             fontFamily: FontFamily.NANUM_GOTHIC,
  //             color: OPColor.black,
  //           ),
  //           textAlign: TextAlign.center,
  //         ),
  //       ),
  //       contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
  //       actions: [
  //         FlatButton(
  //           child: Text(
  //             "아니오",
  //             style: TextStyle(
  //                 fontFamily: FontFamily.NANUM_GOTHIC, color: OPColor.blue),
  //             textAlign: TextAlign.center,
  //           ),
  //           onPressed: () => Navigator.pop(context, false),
  //         ),
  //         FlatButton(
  //           padding: EdgeInsets.zero,
  //           child: Text(
  //             "예",
  //             style: TextStyle(
  //                 fontFamily: FontFamily.NANUM_GOTHIC, color: OPColor.blue),
  //             textAlign: TextAlign.center,
  //           ),
  //           onPressed: () {
  //             if (Platform.isIOS) {
  //               DeviceApps.popSystemIos();
  //             } else if (Platform.isAndroid) {
  //               SystemNavigator.pop();
  //             }
  //           },
  //         ),
  //       ],
  //     ),
  //   );
  // }
  //
  // showTwoButtonMessageDialog(BuildContext context, String message, String positive, String negative, DialogResultListener positiveListener, DialogResultListener negativeListener) {
  //   DialogResultListener dialogResultListener = positiveListener;
  //   DialogResultListener dialogResultListener2 = negativeListener;
  //
  //   showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       title: Container(
  //         margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
  //         child: Text(
  //           message,
  //           style: TextStyle(
  //             fontSize: 14.5,
  //             fontFamily: FontFamily.NANUM_GOTHIC,
  //             color: OPColor.black,
  //           ),
  //           textAlign: TextAlign.center,
  //         ),
  //       ),
  //       contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
  //       actions: [
  //         FlatButton(
  //           child: Text(
  //             negative,
  //             style: TextStyle(
  //                 fontFamily: FontFamily.NANUM_GOTHIC, color: OPColor.blue),
  //             textAlign: TextAlign.center,
  //           ),
  //           onPressed: () => dialogResultListener2.onResult(),
  //         ),
  //         FlatButton(
  //           padding: EdgeInsets.zero,
  //           child: Text(
  //             positive,
  //             style: TextStyle(
  //                 fontFamily: FontFamily.NANUM_GOTHIC, color: OPColor.blue),
  //             textAlign: TextAlign.center,
  //           ),
  //           onPressed: () => dialogResultListener.onResult(),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  //
  // showOrderMessageDialog(BuildContext context, int index, String juso, String menu, String amt, String positive, String negative, DialogResultListener positiveListener, DialogResultListener negativeListener) {
  //   DialogResultListener dialogResultListener = positiveListener;
  //   DialogResultListener dialogResultListener2 = negativeListener;
  //   showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
  //       content: IntrinsicHeight(
  //         child: MediaQuery(
  //           data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
  //           child: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             crossAxisAlignment: CrossAxisAlignment.stretch,
  //             children: [
  //               GestureDetector(
  //                 onTap: () {
  //                   // NetworkService().getList<OrderHistoryDetailModel>(Mode.GET_ORDER_HISTORY_DETAIL, ['2021-00001', '2021-04-23', '1']).then((value) {
  //                   //   var body = value[0].body;
  //                   //   OrderHistoryDetailBodyModel bodyModel = OrderHistoryDetailBodyModel().fromJson(body[0]);
  //                   //   print(bodyModel.menuName);
  //                   //   print(value[0].resultCode);
  //                   //
  //                   // });
  //                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderHistoryDetailPage(index)));
  //                 },
  //                 child: Container(
  //                   margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
  //                   padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
  //                   decoration: BoxDecoration(
  //                       color: OPColor.blue
  //                   ),
  //                   child: Row(
  //                     children: [
  //                       Expanded(
  //                         child: Text(
  //                           '주문 상세정보 확인',
  //                           style: Styles.L_WHITETWO_BOLD,
  //                           textAlign: TextAlign.left,
  //                         ),
  //                       ),
  //                       Image.asset(Images.ICON_RIGHT, color: OPColor.whiteTwo, width: 16.0, height: 19.0,),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //               Container(
  //                 margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
  //                 child: Text(
  //                   juso,
  //                   style: Styles.M_GREYISH_BROWN,
  //                   textAlign: TextAlign.left,
  //                 ),
  //               ),
  //               Container(
  //                 margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
  //                 child: Text(
  //                   menu,
  //                   style: Styles.L_GREYISH_BROWN_BOLD,
  //                   textAlign: TextAlign.left,
  //                 ),
  //               ),
  //               Container(
  //                 margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
  //                 child: Text(
  //                   amt,
  //                   style: Styles.M_GREYISH_BROWN,
  //                   textAlign: TextAlign.left,
  //                 ),
  //               ),
  //               Row(
  //                 children: [
  //                   Expanded(
  //                     flex: 1,
  //                     child: Container(
  //                       margin: EdgeInsets.fromLTRB(10.0, 0.0, 5.0, 0.0),
  //                       child: FlatButton(
  //                         color: OPColor.blue,
  //                         child: Text(
  //                           negative,
  //                           style: Styles.L_WHITETWO,
  //                           textAlign: TextAlign.center,
  //                         ),
  //                         onPressed: () => dialogResultListener2.onResult(),
  //                       ),
  //                     ),
  //                   ),
  //                   Expanded(
  //                     flex: 1,
  //                     child: Container(
  //                       margin: EdgeInsets.fromLTRB(5.0, 0.0, 10.0, 0.0),
  //                       child: FlatButton(
  //                         color: OPColor.blue,
  //                         child: Text(
  //                           positive,
  //                           style: Styles.L_WHITETWO,
  //                           textAlign: TextAlign.center,
  //                         ),
  //                         onPressed: () => dialogResultListener.onResult(),
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //     // builder: (context) => AlertDialog(
  //     //   title: Container(
  //     //     margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
  //     //     child: Text(
  //     //       title,
  //     //       style: Styles.M_GREYISH_BROWN,
  //     //       textAlign: TextAlign.left,
  //     //     ),
  //     //   ),
  //     //   content: Column(
  //     //     mainAxisSize: MainAxisSize.min,
  //     //     crossAxisAlignment: CrossAxisAlignment.start,
  //     //     children: [
  //     //       Container(
  //     //         margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
  //     //         child: Text(
  //     //           message,
  //     //           style: Styles.L_GREYISH_BROWN_BOLD,
  //     //           textAlign: TextAlign.left,
  //     //         ),
  //     //       ),
  //     //       Row(
  //     //         children: [
  //     //           Expanded(
  //     //             flex: 1,
  //     //             child: Container(
  //     //               margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
  //     //               child: FlatButton(
  //     //                 color: OPColor.blue,
  //     //                 child: Text(
  //     //                   negative,
  //     //                   style: Styles.L_WHITETWO,
  //     //                   textAlign: TextAlign.center,
  //     //                 ),
  //     //                 onPressed: () => dialogResultListener2.onResult(),
  //     //               ),
  //     //             ),
  //     //           ),
  //     //           Expanded(
  //     //             flex: 1,
  //     //             child: Container(
  //     //               margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
  //     //               child: FlatButton(
  //     //                 color: OPColor.blue,
  //     //                 child: Text(
  //     //                   positive,
  //     //                   style: Styles.L_WHITETWO,
  //     //                   textAlign: TextAlign.center,
  //     //                 ),
  //     //                 onPressed: () => dialogResultListener.onResult(),
  //     //               ),
  //     //             ),
  //     //           ),
  //     //         ],
  //     //       ),
  //     //     ],
  //     //   ),
  //     //   contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
  //     //   // actions: [
  //     //   //   FlatButton(
  //     //   //     child: Text(
  //     //   //       negative,
  //     //   //       style: TextStyle(
  //     //   //           fontFamily: FontFamily.NANUM_GOTHIC, color: OPColor.blue),
  //     //   //       textAlign: TextAlign.center,
  //     //   //     ),
  //     //   //     onPressed: () => dialogResultListener2.onResult(),
  //     //   //   ),
  //     //   //   FlatButton(
  //     //   //     padding: EdgeInsets.zero,
  //     //   //     child: Text(
  //     //   //       positive,
  //     //   //       style: TextStyle(
  //     //   //           fontFamily: FontFamily.NANUM_GOTHIC, color: OPColor.blue),
  //     //   //       textAlign: TextAlign.center,
  //     //   //     ),
  //     //   //     onPressed: () => dialogResultListener.onResult(),
  //     //   //   ),
  //     //   // ],
  //     // ),
  //   );
  // }
  //
  // showTitleMessageDialog(BuildContext context, String title, String content, DialogResultListener listener) {
  //   dialogResultListener =  listener;
  //
  //   showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       title: Container(
  //         margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
  //         child: Text(
  //           title,
  //           style: TextStyle(
  //             fontSize: 14.5,
  //             fontFamily: FontFamily.NANUM_GOTHIC,
  //             color: OPColor.black,
  //           ),
  //           textAlign: TextAlign.center,
  //         ),
  //       ),
  //       content: Text(
  //         content,
  //         style: TextStyle(
  //           fontSize: 12.5,
  //           fontFamily: FontFamily.NANUM_GOTHIC,
  //           color: OPColor.silver,
  //         ),
  //         textAlign: TextAlign.center,
  //       ),
  //       contentPadding:
  //       EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
  //       actions: [
  //         FlatButton(
  //           child: Text("아니오"),
  //           onPressed: () {
  //             Navigator.pop(context);
  //           },
  //         ),
  //         FlatButton(
  //           child: Text("예"),
  //           onPressed: () => dialogResultListener.onResult(),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  //
  // showInputTextDialog(BuildContext context, String title, String hint, int length, TextInputFormatter inputFormatter, TextInputType inputType, bool obscureText, DialogResultListener listener) {
  //   TextEditingController textEditingController = TextEditingController();
  //   dialogResultListener =  listener;
  //
  //   showDialog(
  //     barrierDismissible: false,
  //     context: context,
  //     builder: (context) => StatefulBuilder(
  //         builder: (context, StateSetter setState) {
  //           return AlertDialog(
  //             contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
  //             content: IntrinsicHeight(
  //               child: MediaQuery(
  //                 data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
  //                 child: Column(
  //                   mainAxisSize: MainAxisSize.min,
  //                   crossAxisAlignment: CrossAxisAlignment.stretch,
  //                   children: [
  //                     Container(
  //                       margin: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
  //                       padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
  //                       decoration: BoxDecoration(
  //                         border: Border(
  //                           bottom: BorderSide(width: 0.5, color: OPColor.black),
  //                         ),
  //                       ),
  //                       child: Text(
  //                         title,
  //                         style: TextStyle(
  //                           fontSize: 19.5,
  //                           fontFamily: FontFamily.NANUM_GOTHIC,
  //                           color: OPColor.black,
  //                         ),
  //                         textAlign: TextAlign.center,
  //                       ),
  //                     ),
  //                     Container(
  //                       // padding: EdgeInsets.all(0.0),
  //                       // height: 50,
  //                       margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
  //                       decoration: BoxDecoration(
  //                           border: Border.all(width: 0.5, color: OPColor.black)
  //                       ),
  //                       child: TextField(
  //                         textInputAction: TextInputAction.next,
  //                         obscureText: obscureText,
  //                         maxLines: 1,
  //                         expands: false,
  //                         inputFormatters: [
  //                           // maskTextInputFormatter
  //                           inputFormatter
  //                         ],
  //                         onChanged: (value) {
  //                           if(value.length == (length-1) || value.length == length) {
  //                             setState(() {});
  //                           }
  //                         },
  //                         keyboardType: inputType,
  //                         controller: textEditingController,
  //                         textAlign: TextAlign.center,
  //                         autofocus: false,
  //                         style: TextStyle(fontSize: 19.5,
  //                             fontFamily: FontFamily.NANUM_GOTHIC,
  //                             color: OPColor.black),
  //                         decoration: InputDecoration(
  //                           border: InputBorder.none,
  //                           hintText: hint,
  //                           hintStyle: TextStyle(fontSize: 19.5,
  //                               fontFamily: FontFamily.NANUM_GOTHIC,
  //                               color: OPColor.silver),
  //                         ),
  //                       ),
  //                     ),
  //                     // Container(
  //                     //   margin: EdgeInsets.fromLTRB(
  //                     //       40.0, 0.0, 40.0, url.contains('sign_up_event_password') ? 20.0 : 40.0),
  //                     //   child: Text(
  //                     //     content,
  //                     //     style: TextStyle(
  //                     //       fontSize: url.contains('sign_up_event_password') ? 14.5 : 16.5,
  //                     //       fontFamily: FontFamily.NANUM_GOTHIC,
  //                     //       color: OPColor.silver,
  //                     //     ),
  //                     //     textAlign: TextAlign.center,
  //                     //   ),
  //                     // ),
  //                     GestureDetector(
  //                       onTap: () => dialogResultListener.onResult(textEditingController.text == '' ? hint : textEditingController.text),
  //                       child: Container(
  //                         padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
  //                         margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
  //                         decoration: BoxDecoration(
  //                           borderRadius: BorderRadius.circular(5.0),
  //                           color: textEditingController.text.length >= length
  //                               ? OPColor.blue
  //                               : OPColor.silver,
  //                         ),
  //                         child: Text(
  //                           "확인",
  //                           style: TextStyle(fontSize: 16.5,
  //                               fontFamily: FontFamily.NANUM_GOTHIC,
  //                               color: OPColor.whiteTwo),
  //                           textAlign: TextAlign.center,
  //                         ),
  //                       ),
  //                     ),
  //                     GestureDetector(
  //                       onTap: () {
  //                         Navigator.of(context).pop();
  //                       },
  //                       child: Container(
  //                         padding: EdgeInsets.all(10.0),
  //                         child: Text(
  //                           "취소",
  //                           style: TextStyle(fontSize: 16.5,
  //                               fontFamily: FontFamily.NANUM_GOTHIC,
  //                               color: OPColor.black,
  //                               decoration: TextDecoration.underline),
  //                           textAlign: TextAlign.center,
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           );
  //         }
  //     ),
  //   );
  // }
}

class DialogResultListener {
  final Function onResult;
  DialogResultListener(this.onResult);
}