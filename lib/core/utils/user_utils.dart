

import 'package:flutter_app_demo/consts/sys_consts.dart';
import 'package:flutter_app_demo/core/redux/user_identity.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sp_util/sp_util.dart';

///登录用户信息
class UserUtils {
  static Future<Null> removeSavedUser() async {
    await SpUtil.remove(SharedPreferencesConstantKey.accessToken);
    await SpUtil.remove(SharedPreferencesConstantKey.refershToken);
    await SpUtil.remove(SharedPreferencesConstantKey.userId);
    await SpUtil.remove(SharedPreferencesConstantKey.expireIn);
    await SpUtil.remove(SharedPreferencesConstantKey.tokenType);
    await SpUtil.remove(SharedPreferencesConstantKey.name);
    await SpUtil.remove(SharedPreferencesConstantKey.account);
    await SpUtil.remove(SharedPreferencesConstantKey.avatar);
    //await CookieUtils.removeAllCookies();
    return;
  }

  static Future<Null> saveToken(UserIdentity userIdentity) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(SharedPreferencesConstantKey.accessToken, userIdentity.accessToken);
    await prefs.setString(SharedPreferencesConstantKey.refershToken, userIdentity.refershToken.toString());
    await prefs.setString(SharedPreferencesConstantKey.userId, userIdentity.userId.toString());
    await prefs.setString(SharedPreferencesConstantKey.expireIn, userIdentity.expireIn.toString());
    await prefs.setString(SharedPreferencesConstantKey.tokenType, userIdentity.tokenType);
    await prefs.setString(SharedPreferencesConstantKey.name, userIdentity.name);
    return;
  }

//  static Future<Null> saveUserInfo(UserInfoBean userInfoBean) async {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    await prefs.setString(SharedPreferencesConstantKey.account, userInfoBean.account);
//    await prefs.setString(SharedPreferencesConstantKey.avatar, userInfoBean.avatarUrl);
//    return;
//  }


  //获取用户id
  static Future<String> getUserId ()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(SharedPreferencesConstantKey.userId);
  }

  //获取accesstoken
  static Future<String> getAccessToken ()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(SharedPreferencesConstantKey.accessToken);
  }

  //获取Name
  static Future<String> getName ()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(SharedPreferencesConstantKey.name);
  }

  //获取登录账号
  static Future<String> getAccount ()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(SharedPreferencesConstantKey.account);
  }

  //获取头像
  static Future<String> getAvatar ()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(SharedPreferencesConstantKey.avatar);
  }
  //设置头像
  static Future setAvatar(String avatar) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(SharedPreferencesConstantKey.avatar, avatar);
  }
}