import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter_app_demo/pages/index_page.dart';
import 'package:flutter_app_demo/pages/splash_page.dart';

import 'core/config/url_config.dart';
import 'core/env/environment.dart';
import 'core/utils/app_utils.dart';
import 'core/utils/dio_client.dart';

void main() {
  _init();

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());

  });
  if (Platform.isAndroid) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  }
  // FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
}

void _init() {

  BaseOptions options = BaseOptions();
  options.baseUrl = UrlConfig.BASE_URL;

  DioClient.getInstance().setOptions(options);
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //        debugShowCheckedModeBanner: false,
      home: SplashPage(),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.light,
          primaryColor: AppColors.colorF0F0F0, //滑动返回
      ),

    );
  }
}

