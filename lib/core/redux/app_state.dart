
import 'package:flutter_app_demo/core/redux/user_identity.dart';
import 'package:flutter_app_demo/core/redux/user_redux.dart';

/// 维护一个Redux的统一State
class AppState {
  UserIdentity userInfo;
  AppState({this.userInfo});
}

AppState appReducer(AppState state, dynamic action) {
  return AppState(
      userInfo: UserInfoReducer(state.userInfo, action)
  );
}