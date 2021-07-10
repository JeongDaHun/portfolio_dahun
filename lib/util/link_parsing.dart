//****************************************************
//  link_parsing.dart
//  portfolio_dahun
//
//  Created by Dahun Jeong on 04/06/2021.
//  Copyright © 2021 Dahun Jeong. All rights reserved.
//****************************************************

import 'package:flutter/cupertino.dart';
import 'package:portfolio_dahun/util/dialog_util.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkParsing {
  urlParsing(BuildContext context, String url) {
    if (url.contains('http') ||
        url.contains('https') ||
        url.contains('market://details?id=') ||
        url.contains('itunes')) {
      _launchURL(url);
    } else {
      DialogUtil().showMessageDialog(context, '알 수 없는 URL입니다.',
          DialogResultListener(() {
        Navigator.of(context).pop();
      }));
    }
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(url, forceSafariVC: true);
      }
    } else {
      throw 'Could not launch $url';
    }
  }
}
