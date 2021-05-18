import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/core/utils/app_utils.dart';
import 'dart:math' as math;

class LayoutPage extends StatefulWidget {
  LayoutPage({Key key}) : super(key: key);
  @override
  _LayoutPageState createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    AppSize.init(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("布局"),
        ),
        body:SingleChildScrollView(
          child: Center(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Row",style: TextStyle(fontSize: 20,color: Colors.blue),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(" hello world "),
                      Text(" I am Jack "),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Text("Column",style: TextStyle(fontSize: 20,color: Colors.blue),),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(" hello world "),
                          Text(" I am Jack "),
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20,bottom: 5),
                    height: 2,
                    color: Colors.lightBlueAccent,
                  ),
                  Text("Flex",style: TextStyle(fontSize: 20,color: Colors.blue),),
                  Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 30.0,
                          color: Colors.red,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 30.0,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20,bottom: 5),
                    height: 2,
                    color: Colors.lightBlueAccent,
                  ),
                  Text("Wrap",style: TextStyle(fontSize: 20,color: Colors.blue),),
                  Wrap(
                    spacing: 8.0, // 主轴(水平)方向间距
                    runSpacing: 4.0, // 纵轴（垂直）方向间距
                    alignment: WrapAlignment.start, //沿主轴方向居中
                    children: <Widget>[
                      new Chip(
                        avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
                        label: new Text('Hamilton'),
                      ),
                      new Chip(
                        avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
                        label: new Text('Lafayette'),
                      ),
                      new Chip(
                        avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
                        label: new Text('Mulligan'),
                      ),
                      new Chip(
                        avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
                        label: new Text('Laurens'),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20,bottom: 5),
                    height: 2,
                    color: Colors.lightBlueAccent,
                  ),
                  Text("Align",style: TextStyle(fontSize: 20,color: Colors.blue),),
                  Row(
                    children: [
                      Container(
                        height: 120.0,
                        width: 120.0,
                        color: Colors.blue[50],
                        child: Align(
                          alignment: Alignment.center,
                          child: FlutterLogo(
                            size: 60,
                          ),
                        ),
                      ),
                      Container(
                        height: 120.0,
                        width: 120.0,
                        color: Colors.blue[50],
                        margin: EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: FlutterLogo(
                            size: 60,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20,bottom: 5),
                    height: 2,
                    color: Colors.lightBlueAccent,
                  ),
                  Text("层叠布局 Stack、Positioned（绝对定位）",style: TextStyle(fontSize: 20,color: Colors.blue),),
                ],
              )
          ),
        )
    );
  }


  @override
  void initState() {
    super.initState();
  }
}