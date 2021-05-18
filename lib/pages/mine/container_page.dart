import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/core/utils/app_utils.dart';
import 'dart:math' as math;

class ContainerPage extends StatefulWidget {
  ContainerPage({Key key}) : super(key: key);
  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    AppSize.init(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("容器"),
        ),
        body:SingleChildScrollView(
          child: Center(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Container",style: TextStyle(fontSize: 20),),
                  Container(
                    margin: EdgeInsets.only(top: 50.0, left: 120.0), //容器外填充
                    constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0), //卡片大小
                    decoration: BoxDecoration(//背景装饰
                        gradient: RadialGradient( //背景径向渐变
                            colors: [Colors.red, Colors.orange],
                            center: Alignment.topLeft,
                            radius: .98
                        ),
                        boxShadow: [ //卡片阴影
                          BoxShadow(
                              color: Colors.black54,
                              offset: Offset(2.0, 2.0),
                              blurRadius: 4.0
                          )
                        ]
                    ),
                    transform: Matrix4.rotationZ(.2), //卡片倾斜变换
                    alignment: Alignment.center, //卡片内文字居中
                    child: Text( //卡片文字
                      "5.20", style: TextStyle(color: Colors.white, fontSize: 40.0),
                    ),
                  ),
                  Container(
                    height: 100,
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0), //容器内补白
                    margin: EdgeInsets.only(bottom: 10),
                    color: Colors.orange,
                    child: Text("Hello world!"),
                  ),
                  Container(
                    height: 2,
                    color: Colors.lightBlueAccent,
                  ),
                  Text("Padding",style: TextStyle(fontSize: 20),),
                  Padding(
                    //左边添加8像素补白
                    padding: const EdgeInsets.only(left: 18.0,top: 10),
                    child: Container(
                      padding: EdgeInsets.all(20.0), //容器内补白
                      margin: EdgeInsets.only(bottom: 10),
                      color: Colors.orange,
                      child: Text("Hello world!"),
                    ),
                  ),
                  Container(
                    height: 2,
                    color: Colors.lightBlueAccent,
                  ),
                  Text("Transform",style: TextStyle(fontSize: 20),),
                  Container(
                    color: Colors.black,
                    margin:EdgeInsets.only(top: 50,left: 20),
                    child: new Transform(
                      alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
                      transform: new Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
                      child: new Container(
                        padding: const EdgeInsets.all(8.0),
                        color: Colors.deepOrange,
                        child: const Text('Apartment for rent!'),
                      ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top: 50,left: 20),
                    child: DecoratedBox(
                      decoration:BoxDecoration(color: Colors.red),
                      //默认原点为左上角，左移20像素，向上平移5像素
                      child: Transform.translate(
                        offset: Offset(20.0, 5.0),
                        child: Text("Hello world"),
                      ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top: 50,left: 20),
                    child: DecoratedBox(
                      decoration:BoxDecoration(color: Colors.red),
                      child: Transform.rotate(
                        //旋转90度
                        angle:math.pi/2 ,
                        child: Text("Hello world"),
                      ),
                    )
                  )


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