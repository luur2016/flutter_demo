import 'package:flutter/material.dart';
import 'package:flutter_app_demo/core/utils/app_utils.dart';
import 'package:flutter_app_demo/pages/mine/TipRoute.dart';

import '../common.dart';
import 'GestureDetectorTestRoute.dart';
import 'ScaffoldRoute.dart';
import 'container_page.dart';
import 'layout_page.dart';

class RouterTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () async {
          // 打开`TipRoute`，并等待返回结果
          var result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return TipRoute(
                  // 路由参数
                  text: "我是提示xxxx",
                );
              },
            ),
          );
          //输出`TipRoute`路由返回结果
          print("路由返回值: $result");
        },
        child: Text("打开提示页"),
      ),
    );
  }
}