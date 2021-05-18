import 'package:flutter/material.dart';
import 'package:flutter_app_demo/core/utils/app_utils.dart';

import '../common.dart';
import 'GestureDetectorTestRoute.dart';
import 'ScaffoldRoute.dart';
import 'container_page.dart';
import 'layout_page.dart';

class TipRoute extends StatelessWidget {
  TipRoute({
    Key key,
    @required this.text,  // 接收一个text参数
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(
                onPressed: () => Navigator.pop(context, "我是返回值"),
                child: Text("返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}