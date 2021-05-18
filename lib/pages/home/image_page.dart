import 'package:flutter/material.dart';
import 'package:flutter_app_demo/core/utils/app_utils.dart';

class ImagePage extends StatefulWidget {
  ImagePage({Key key}) : super(key: key);
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    AppSize.init(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("图片组件"),
        ),
        body:Center(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage("assets/images/test.png"),
                    width: 200.0,
                    height: 100,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text.rich(TextSpan(
                      children: [
                        TextSpan(
                            text: """ Image(
              image: AssetImage("assets/images/test.png"),
              width: 100.0
              )""",
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: NetworkImage(
                        "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
                    width: 200.0,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text.rich(TextSpan(
                      children: [
                        TextSpan(
                            text: """ Image(
              image: NetworkImage(
 "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
                    width: 200.0,
              )""",
                            style: TextStyle(color: Colors.blue,fontSize:13)),
                      ]
                  )
                  )
                ],
              ),
            ],
          )
        )
    );
  }


  @override
  void initState() {
    super.initState();
  }
}