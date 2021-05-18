
import 'package:flutter_app_demo/core/redux/user_identity.dart';
import 'package:flutter_app_demo/core/utils/user_utils.dart';
import 'package:redux/redux.dart';

/// redux 的 combineReducers, 通过 TypedReducer 将 UpdateStoreInfoDataAction 与 reducers 关联起来
final UserInfoReducer = combineReducers<UserIdentity>([
  TypedReducer<UserIdentity, UpdateStoreInfoAction>(_updateUserConfig),
]);

/// 如果有 UpdateStoreInfoDataAction 发起一个请求时
/// 就会调用到 _updateStoreConfig
/// _updateStoreConfig 这里接受一个新的 StoreInfoData，并返回
UserIdentity _updateUserConfig(UserIdentity userInfoData, UpdateStoreInfoAction action) {
  userInfoData = action.storeInfoData;
  UserUtils.saveToken(userInfoData);
  return userInfoData;
}

///定一个 UpdateStoreInfoDataAction ，用于发起 StoreInfoData 的的改变
///类名随你喜欢定义，只要通过上面TypedReducer绑定就好
class UpdateStoreInfoAction {
  final UserIdentity storeInfoData;
  UpdateStoreInfoAction(this.storeInfoData);
}
