
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


///app size
class AppSize{
  static void init(BuildContext context){
    ScreenUtil.init(context, designSize: Size(1080,1920), allowFontScaling: false);
  }

  static double height(double value){
    return ScreenUtil().setHeight(value);
  }

  static double width(double value){
    return ScreenUtil().setWidth(value);
  }

  static double sp(double value){
    return ScreenUtil().setSp(value);
  }
}


///app color
class AppColors {
  static const Color colorRGB1e8ff2 = const Color(0xff1e8ff2);
  static const Color colorF0F0F0 = const Color(0xFFF0F0F0);

}



