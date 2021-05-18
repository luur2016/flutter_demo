import 'package:flutter/material.dart';
import 'package:flutter_app_demo/core/utils/app_utils.dart';

class SingleChildScrollViewPage extends StatefulWidget {
  SingleChildScrollViewPage({Key key}) : super(key: key);
  @override
  _SingleChildScrollViewPageState createState() => _SingleChildScrollViewPageState();
}

class _SingleChildScrollViewPageState extends State<SingleChildScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    AppSize.init(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("SingleChildScrollView"),
        ),
        body:SingleChildScrollView(
          child: Center(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(" hello world ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                      Text(" I am Jack ",style: TextStyle(color: Colors.indigo,fontSize: 30),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(
                          children: [
                            TextSpan(
                                text: """ Text(" hello world ",style: \n\rTextStyle(fontSize: 20,fontWeight: FontWeight.w500),)""",
                                style: TextStyle(color: Colors.blue,fontSize:16)),
                          ]
                      )
                      )
                    ],
                  ),
                  Container(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.up,
                    children: <Widget>[
                      Text(" hello world ", style: TextStyle(fontSize: 30.0),),
                      Text(" I am Jack "),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(" hello world ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                      Text(" I am Jack ",style: TextStyle(color: Colors.indigo,fontSize: 30),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(
                          children: [
                            TextSpan(
                                text: """ Text(" hello world ",style: \n\rTextStyle(fontSize: 20,fontWeight: FontWeight.w500),)""",
                                style: TextStyle(color: Colors.blue,fontSize:16)),
                          ]
                      )
                      )
                    ],
                  ),
                  Container(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.up,
                    children: <Widget>[
                      Text(" hello world ", style: TextStyle(fontSize: 30.0),),
                      Text(" I am Jack "),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(" hello world ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                      Text(" I am Jack ",style: TextStyle(color: Colors.indigo,fontSize: 30),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(
                          children: [
                            TextSpan(
                                text: """ Text(" hello world ",style: \n\rTextStyle(fontSize: 20,fontWeight: FontWeight.w500),)""",
                                style: TextStyle(color: Colors.blue,fontSize:16)),
                          ]
                      )
                      )
                    ],
                  ),
                  Container(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.up,
                    children: <Widget>[
                      Text(" hello world ", style: TextStyle(fontSize: 30.0),),
                      Text(" I am Jack "),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(" hello world ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                      Text(" I am Jack ",style: TextStyle(color: Colors.indigo,fontSize: 30),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(
                          children: [
                            TextSpan(
                                text: """ Text(" hello world ",style: \n\rTextStyle(fontSize: 20,fontWeight: FontWeight.w500),)""",
                                style: TextStyle(color: Colors.blue,fontSize:16)),
                          ]
                      )
                      )
                    ],
                  ),
                  Container(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.up,
                    children: <Widget>[
                      Text(" hello world ", style: TextStyle(fontSize: 30.0),),
                      Text(" I am Jack "),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(" hello world ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                      Text(" I am Jack ",style: TextStyle(color: Colors.indigo,fontSize: 30),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(
                          children: [
                            TextSpan(
                                text: """ Text(" hello world ",style: \n\rTextStyle(fontSize: 20,fontWeight: FontWeight.w500),)""",
                                style: TextStyle(color: Colors.blue,fontSize:16)),
                          ]
                      )
                      )
                    ],
                  ),
                  Container(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.up,
                    children: <Widget>[
                      Text(" hello world ", style: TextStyle(fontSize: 30.0),),
                      Text(" I am Jack "),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(" hello world ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                      Text(" I am Jack ",style: TextStyle(color: Colors.indigo,fontSize: 30),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(
                          children: [
                            TextSpan(
                                text: """ Text(" hello world ",style: \n\rTextStyle(fontSize: 20,fontWeight: FontWeight.w500),)""",
                                style: TextStyle(color: Colors.blue,fontSize:16)),
                          ]
                      )
                      )
                    ],
                  ),
                  Container(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.up,
                    children: <Widget>[
                      Text(" hello world ", style: TextStyle(fontSize: 30.0),),
                      Text(" I am Jack "),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(" hello world ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                      Text(" I am Jack ",style: TextStyle(color: Colors.indigo,fontSize: 30),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(
                          children: [
                            TextSpan(
                                text: """ Text(" hello world ",style: \n\rTextStyle(fontSize: 20,fontWeight: FontWeight.w500),)""",
                                style: TextStyle(color: Colors.blue,fontSize:16)),
                          ]
                      )
                      )
                    ],
                  ),
                  Container(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.up,
                    children: <Widget>[
                      Text(" hello world ", style: TextStyle(fontSize: 30.0),),
                      Text(" I am Jack "),
                    ],
                  ),
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