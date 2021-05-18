
import 'package:flutter_app_demo/core/config/url_config.dart';

enum AppMode { DEBUG, STAGING, RELEASE }



class Environment {
  static final Environment _singleton = new Environment._internal();
  //static AbstractUrlConfig urlConfig;
  static AppMode appMode;
//  static CookieJar dioCookieJar;
  static String proxyAddress;
  factory Environment() {
    return _singleton;
  }
  Environment._internal();
}