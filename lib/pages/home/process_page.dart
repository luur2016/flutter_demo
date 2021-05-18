import 'package:flutter/material.dart';
import 'package:flutter_app_demo/core/utils/app_utils.dart';

class ProcessPage extends StatefulWidget {
  ProcessPage({Key key}) : super(key: key);
  @override
  _ProcessPageState createState() => _ProcessPageState();
}

class _ProcessPageState extends State<ProcessPage> {
  @override
  Widget build(BuildContext context) {
    AppSize.init(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("进度条组件"),
        ),
        body:Center(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(height: 20,),
              SizedBox(
                height: 3,
                child: LinearProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                  value: .5,
                ),
              ),
              Container(height: 10,),
              Text.rich(TextSpan(
                  children: [
                    TextSpan(
                        text: """ LinearProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                  value: .5,
                ),""",
                        style: TextStyle(color: Colors.blue,fontSize:16)),
                  ]
              )
              ),
// 圆形进度条直径指定为100
              Container(height: 50,),
              SizedBox(
                height: 100,
                width: 100,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                  value: .7,
                ),
              ),
              Container(height: 10,),
              Text.rich(TextSpan(
                  children: [
                    TextSpan(
                        text: """CircularProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                  value: .7,
                ),""",
                        style: TextStyle(color: Colors.blue,fontSize:16)),
                  ]
              )
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