import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter_app_demo/consts/key_consts.dart';
import 'package:flutter_app_demo/core/config/url_config.dart';
import 'package:flutter_app_demo/core/env/environment.dart';
import 'package:shared_preferences/shared_preferences.dart';



class DioClient {
  static final DioClient _instance = DioClient._init();

  static Dio _dio;
  static BaseOptions _options = getDefOptions();

  factory DioClient() {
    return _instance;
  }

  DioClient._init() {
    _dio = new Dio();
    _dio.options = _options;

    _dio.interceptors.add(InterceptorsWrapper(
        onRequest:(RequestOptions options) async {
          options.headers.addAll(await DioUtils.getAccessTokenHeader());
          return options; //continue
        },
        onResponse:(Response response) async {
          // Do something with response data
          return response; // continue
        },
        onError: (DioError e) async {
          // Do something with response error
          return  e;//continue
        }
    ));

  }

  static DioClient getInstance() {
    return _instance;
  }

  setOptions(BaseOptions options) {
    _options = options;
    _dio.options = _options;
  }

  static BaseOptions getDefOptions() {
    BaseOptions options = BaseOptions();
    options.connectTimeout = 10 * 1000;
    options.receiveTimeout = 20 * 1000;
    options.contentType = ContentType.json.toString();

    Map<String, dynamic> headers = Map<String, dynamic>();
    headers['Accept'] = 'application/json';

    String platform;
    if(Platform.isAndroid) {
      platform = "Android";
    } else if(Platform.isIOS) {
      platform = "IOS";
    }
    headers['OS'] = platform;
    options.headers = headers;
    options.baseUrl = UrlConfig.BASE_URL;

    return options;
  }


  Future<Response> get(String path, {Map<String, dynamic> queryParameters, Options options}) async {
    var response = await _dio.get(path, queryParameters: queryParameters, options: options);
    return response;
  }

  Future<Response> post(String path, {dynamic data}) async {
    var response = await _dio.post(path,data: data);
    return response;
  }




  /// decode response data.
  Map<String, dynamic> _decodeData(Response response) {
    if (response == null ||
        response.data == null ||
        response.data.toString().isEmpty) {
      return new Map();
    }
    return json.decode(response.data.toString());
  }


}

class GeneralResp<T> {
  int status;
  String message;
  T data;

  GeneralResp(this.status, this.message, this.data);

  @override
  String toString() {
    StringBuffer sb = new StringBuffer('{');
    sb.write("\"status\":\"$status\"");
    //sb.write(",\"code\":$code");
    sb.write(",\"msg\":\"$message\"");
    sb.write(",\"data\":\"$data\"");
    sb.write('}');
    return sb.toString();
  }

}



class DioUtils {

  static Future<Map<String, dynamic>> getAccessTokenHeader() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var accessToken = prefs.getString(
        SharedPreferencesConstantKey.accessToken) ?? null;
    Map<String, dynamic> headers = {
      HttpConstantKey.headerAccessKey: "Resint2018@api_key",
    };

    if (ObjectUtil.isEmptyString(accessToken)) {
      return headers;
    }
    if (accessToken != null) {
      headers[HttpConstantKey.headerAccessToken] =
          HttpConstantKey.headerTokenType + accessToken;
    }
    return headers;
  }

}