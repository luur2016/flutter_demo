import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_demo/core/utils/app_utils.dart';
import 'package:flutter_app_demo/pages/index_page.dart';

class SplashPage extends StatefulWidget {
  @override
  SplashPageState createState() => new SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  Timer _t;

  @override
  void initState() {
    super.initState();
    _t = new Timer(const Duration(milliseconds: 3000), () {
      try {
        Navigator.of(context).pushAndRemoveUntil(
            PageRouteBuilder<Null>(
              pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) {
                return AnimatedBuilder(
                  animation: animation,
                  builder: (BuildContext context, Widget child) {
                    return Opacity(
                      opacity: animation.value,
                      child: new IndexPage(),
                    );
                  },
                );
              },
              transitionDuration: Duration(milliseconds: 300),
            ),
                (Route route) => route == null);
      } catch (e) {}
    });
  }

  @override
  void dispose() {
    _t.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: AppColors.colorRGB1e8ff2,
      child: Container(
        alignment: Alignment(0, -0.3),
        child: new Text(
          "Flutter Demo",
          style: new TextStyle(
              color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
