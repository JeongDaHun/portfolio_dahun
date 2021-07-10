//****************************************************
//  string_resource.dart
//  portfolio_dahun
//
//  Created by Dahun Jeong on 04/06/2021.
//  Copyright © 2021 Dahun Jeong. All rights reserved.
//****************************************************

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_dahun/util/onemoa_point_color.dart';

class Strings {
  //playstroe, appstore url
  static const APP_IOS_URL = 'https://itunes.apple.com/app/id1559491093';
  static const APP_ANDROID_URL = 'market://details?id=com.onemoa.onemoapoint_ceo';
  static const APP_GITHUB_URL = 'https://onemoa-git.github.io/onemoapoint_ceo_download';

  //encrypt
  static const ENCRYPT_KEY = 'onemoa_system_developer_dahun.nn';

  //common
  static const CHECK = '확인';

  //tab
  static const SEARCH = '검색';

  //app bar title
  static const POINT_ACCUMULATE = '포인트 적립';
  static const MY_PAGE = '마이페이지';
  static const ORDER_HISTORY = '주문관리';
  static const SALE_HISTORY = '판매내역';
  static const CUSTOMER_PURCHASE_HISTORY = '고객 구매내역';
  static const ACCUMULATED_COMPLETE = '적립완료';

  //login
  static const AUTO_LOGIN = '자동 로그인';

  //search result
  static const PURCHASE_HISTORY = '구매내역';
  static const TOTAL_POINT = '총 포인트';
  static const AVAILABLE_POINT = '가용 포인트';
  static const LAST_PURCHASE_DATE = '최근 구매일시';
  static const BOTTOM_BUTTON = '포인트 적용하기';
  static const SALE_AMOUNT = '판매금액';
  static const USE_POINT = '사용포인트';
  static const PAY_AMOUNT = '결제금액';
  static const ACCUMULATED_EXPECTED_AMOUNT = '적립 예정액';
  static const ACCUMULATED_POINT_TEXT = '결제 금액의 2%가 적립됩니다.';

  //search complete
  static const SEARCH_COMPLETE_TITLE = '포인트가 적립 되었습니다.';
  static const SEARCH_COMPLETE_CONTENT = '고객 구매내역에서\n언제든지 확인이 가능합니다.';

  //history
  static const ACCUMULATED_POINT = '적립 포인트';

  //mypage
  static const SETTING = '환경설정';
  static const MENU_MANAGEMENT = '메뉴관리';
  static const STORE_MANAGEMENT = '매장관리';
  static const IMAGE = '이미지/동영상 관리';
  static const SETTING_PUSH_CAUTION_TEXT = '''기기 알림이 비허용 상태인 경우, PUSH 알림을 받지 못할 수 있습니다. 아래 내용을 참고하시면 언제든 원모아포인트 점주앱의 새로운 소식을 받아보실 수 있습니다.

.기기 환경설정에서 기기 알림 허용
.원모아포인트 점주앱에서 PUSH 알림 설정창에서 알림 허용''';
  static const SETTING_BUSINESS_INFORMATION_VERIFICATION_TEXT = '사업자 정보 확인';
  static const SETTING_TERMS_TEXT = '이용약관';
  static const SETTING_PRIVACY_TEXT = '개인정보 처리방침';
  static const SETTING_TERMS_OF_SERVICE_TEXT = '서비스 이용약관';
  static const SETTING_LOCATION_TERMS_OF_SERVICE_TEXT = '위치기반서비스 이용약관';
  static const SETTING_TERMS_OF_ELECTRONIC_FINANCIAL_TEXT = '전자금융거래 이용약관';
  static const SETTING_PRIVACY_STATEMENT_TEXT = '개인정보 취급 방침';
  static const SETTING_PERSON_INFORMATION_AGREE_TEXT = '개인정보 수집 및 이용 동의';

  static const SETTING_BUSINESS_INFORMATION_VERIFICATION_URL = 'http://www.ftc.go.kr/bizCommPop.do?wrkr_no=7798800818';
  static const SETTING_TERMS_OF_SERVICE_URL = 'http://file2.onemoa.co.kr:8085/terms/terms_of_service.jsp';
  static const SETTING_LOCATION_TERMS_OF_SERVICE_URL = 'http://file2.onemoa.co.kr:8085/terms/location_terms_of_service.jsp';
  static const SETTING_TERMS_OF_ELECTRONIC_FINANCIAL_URL = 'http://file2.onemoa.co.kr:8085/terms/terms_of_electronic_financial.jsp';
  static const SETTING_PRIVACY_STATEMENT_URL = 'http://file2.onemoa.co.kr:8085/terms/privacy_statement.jsp';
  static const SETTING_PERSON_INFORMATION_AGREE_URL = 'http://file2.onemoa.co.kr:8085/terms/person_information_agree.jsp';
}

class Styles {
  //whitetwo
  static const TextStyle B_WHITETWO_BOLD = TextStyle(fontSize: 20.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.whiteTwo);
  static const TextStyle L_WHITETWO_BOLD = TextStyle(fontSize: 16.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.whiteTwo);
  static const TextStyle M_WHITETWO_BOLD = TextStyle(fontSize: 14.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.whiteTwo);
  static const TextStyle S_WHITETWO_BOLD = TextStyle(fontSize: 12.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.whiteTwo);

  static const TextStyle B_WHITETWO = TextStyle(fontSize: 20.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.whiteTwo);
  static const TextStyle L_WHITETWO = TextStyle(fontSize: 16.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.whiteTwo);
  static const TextStyle M_WHITETWO = TextStyle(fontSize: 14.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.whiteTwo);
  static const TextStyle S_WHITETWO = TextStyle(fontSize: 12.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.whiteTwo);

  //black
  static const TextStyle B_BLACK_BOLD = TextStyle(fontSize: 20.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.black);
  static const TextStyle L_BLACK_BOLD = TextStyle(fontSize: 16.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.black);
  static const TextStyle M_BLACK_BOLD = TextStyle(fontSize: 14.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.black);
  static const TextStyle S_BLACK_BOLD = TextStyle(fontSize: 12.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.black);

  static const TextStyle B_BLACK = TextStyle(fontSize: 20.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.black);
  static const TextStyle L_BLACK = TextStyle(fontSize: 16.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.black);
  static const TextStyle M_BLACK = TextStyle(fontSize: 14.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.black);
  static const TextStyle S_BLACK = TextStyle(fontSize: 12.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.black);

  //blue
  static const TextStyle B_BLUE_BOLD = TextStyle(fontSize: 20.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.blue);
  static const TextStyle L_BLUE_BOLD = TextStyle(fontSize: 16.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.blue);
  static const TextStyle M_BLUE_BOLD = TextStyle(fontSize: 14.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.blue);
  static const TextStyle S_BLUE_BOLD = TextStyle(fontSize: 12.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.blue);

  static const TextStyle B_BLUE = TextStyle(fontSize: 20.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.blue);
  static const TextStyle L_BLUE = TextStyle(fontSize: 16.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.blue);
  static const TextStyle M_BLUE = TextStyle(fontSize: 14.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.blue);
  static const TextStyle S_BLUE = TextStyle(fontSize: 12.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.blue);

  //greyish brown
  static const TextStyle B_GREYISH_BROWN_BOLD = TextStyle(fontSize: 20.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.greyishBrown);
  static const TextStyle L_GREYISH_BROWN_BOLD = TextStyle(fontSize: 16.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.greyishBrown);
  static const TextStyle M_GREYISH_BROWN_BOLD = TextStyle(fontSize: 14.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.greyishBrown);
  static const TextStyle S_GREYISH_BROWN_BOLD = TextStyle(fontSize: 12.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.greyishBrown);

  static const TextStyle B_GREYISH_BROWN = TextStyle(fontSize: 20.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.greyishBrown);
  static const TextStyle L_GREYISH_BROWN = TextStyle(fontSize: 16.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.greyishBrown);
  static const TextStyle M_GREYISH_BROWN = TextStyle(fontSize: 14.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.greyishBrown);
  static const TextStyle S_GREYISH_BROWN = TextStyle(fontSize: 12.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.greyishBrown);

  //silver
  static const TextStyle B_SILVER_BOLD = TextStyle(fontSize: 20.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.silver);
  static const TextStyle L_SILVER_BOLD = TextStyle(fontSize: 16.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.silver);
  static const TextStyle M_SILVER_BOLD = TextStyle(fontSize: 14.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.silver);
  static const TextStyle S_SILVER_BOLD = TextStyle(fontSize: 12.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: PFColor.silver);

  static const TextStyle B_SILVER = TextStyle(fontSize: 20.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.silver);
  static const TextStyle L_SILVER = TextStyle(fontSize: 16.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.silver);
  static const TextStyle M_SILVER = TextStyle(fontSize: 14.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.silver);
  static const TextStyle S_SILVER = TextStyle(fontSize: 12.5, fontFamily: FontFamily.NANUM_GOTHIC, color: PFColor.silver);

  //red
  static const TextStyle B_RED_BOLD = TextStyle(fontSize: 20.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: Colors.red);
  static const TextStyle L_RED_BOLD = TextStyle(fontSize: 16.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: Colors.red);
  static const TextStyle M_RED_BOLD = TextStyle(fontSize: 14.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: Colors.red);
  static const TextStyle S_RED_BOLD = TextStyle(fontSize: 12.5, fontFamily: FontFamily.NANUM_GOTHIC_BOLD, color: Colors.red);

  static const TextStyle B_RED = TextStyle(fontSize: 20.5, fontFamily: FontFamily.NANUM_GOTHIC, color: Colors.red);
  static const TextStyle L_RED = TextStyle(fontSize: 16.5, fontFamily: FontFamily.NANUM_GOTHIC, color: Colors.red);
  static const TextStyle M_RED = TextStyle(fontSize: 14.5, fontFamily: FontFamily.NANUM_GOTHIC, color: Colors.red);
  static const TextStyle S_RED = TextStyle(fontSize: 12.5, fontFamily: FontFamily.NANUM_GOTHIC, color: Colors.red);
}

class FontFamily {
  static const NANUM_GOTHIC = 'nanumgothic';
  static const NANUM_GOTHIC_BOLD = 'nanumgothicbold';
}

class Images {
  static const APP_ICON = 'images/app_icon.png';
  static const TAB_SEARCH = 'images/tab_search.png';
  static const TAB_HISTORY = 'images/tab_history.png';
  static const TAB_MYPAGE = 'images/tab_mypage.png';
  static const ICON_LOGO_EMPTY = 'images/icon_logo_empty.png';
  static const ICON_BACK = 'images/icon_back.png';
  static const ICON_DELETE = 'images/icon_delete.png';
  static const ICON_DELETE_KEYBOARD = 'images/icon_delete_keyboard.png';
  static const ICON_SPLASH = 'images/icon_splash.png';
  static const ICON_PHONE = 'images/icon_phone.png';
  static const ICON_SCANNER = 'images/icon_scanner.png';
  static const ICON_FLASH_OFF = 'images/icon_flash_off.png';
  static const ICON_FLASH_ON = 'images/icon_flash_on.png';
  static const ICON_CAMERA_FACING = 'images/icon_camera_facing.png';
  static const ICON_CHECK_BLACK = 'images/icon_check_black.png';
  static const ICON_DROP_DOWN = 'images/icon_dropdown.png';
  static const ICON_COMPLETE = 'images/icon_complete.png';
  static const ICON_ONEMOA_LOGO = 'images/icon_onemoa_logo.png';
  static const ICON_RIGHT = 'images/icon_right.png';
}
