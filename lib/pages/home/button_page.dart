import 'package:flutter/material.dart';
import 'package:flutter_app_demo/core/utils/app_utils.dart';

class ButtonPage extends StatefulWidget {
  ButtonPage({Key key}) : super(key: key);
  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    AppSize.init(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("按钮组件"),
        ),
        body:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(" ElevatedButton ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  ElevatedButton(
                    child: Text("ElevatedButton"),
                    onPressed: () {},
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text.rich(TextSpan(
                      children: [
                        TextSpan(
                            text: """  
                            ElevatedButton(
                                child: Text("normal"),
                                onPressed: () {},
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(" TextButton ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  TextButton(
                    child: Text("TextButton"),
                    onPressed: () {},
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text.rich(TextSpan(
                      children: [
                        TextSpan(
                            text: """  
                            TextButton(
                                child: Text("normal"),
                                onPressed: () {},
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(" OutlinedButton ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  OutlinedButton(
                    child: Text("OutlinedButton"),
                    onPressed: () {},
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text.rich(TextSpan(
                      children: [
                        TextSpan(
                            text: """  
                            TextButton(
                                child: Text("OutlinedButton"),
                                onPressed: () {},
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(" IconButton ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  IconButton(
                    icon: Icon(Icons.thumb_up),
                    onPressed: () {},
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text.rich(TextSpan(
                      children: [
                        TextSpan(
                            text: """  
                            IconButton(
                              icon: Icon(Icons.thumb_up),
                              onPressed: () {},
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(" OutlinedButton ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  OutlinedButton.icon(
                    label: Text("OutlinedButton"),
                    onPressed: () {},
                    icon: Icon(Icons.add),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text.rich(TextSpan(
                      children: [
                        TextSpan(
                            text: """  
                            TextButton(
                                child: Text("OutlinedButton"),
                                onPressed: () {},
                              )""",
                            style: TextStyle(color: Colors.blue,fontSize:16)),
                      ]
                  )
                  )
                ],
              ),
            ],
          ),
        )
    );
  }


  @override
  void initState() {
    super.initState();
  }
}