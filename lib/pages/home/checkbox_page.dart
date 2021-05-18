import 'package:flutter/material.dart';
import 'package:flutter_app_demo/core/utils/app_utils.dart';

class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);
  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {

  bool _switchSelected=true; //维护单选开关状态
  bool _checkboxSelected=true;//维护复选框状态


  @override
  Widget build(BuildContext context) {
    AppSize.init(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("单选多选组件"),
        ),
        body:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Switch(
                    value: _switchSelected, //当前状态，必填
                      // activeColor: Colors.red,
                      onChanged: (value) {  //必填，改变状态后执行的代码逻辑
                      //重新构建页面
                      setState(() {
                        _switchSelected = value;
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text.rich(TextSpan(
                      children: [
                        TextSpan(
                            text: """  
                  Switch(
                      value: _switchSelected, 
                      // activeColor: Colors.red,
                      onChanged: (value) { 
                      setState(() {
                        _switchSelected = value;
                      });
                    },
                  ),""",
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
                  Checkbox(
                    value: _checkboxSelected,
                    activeColor: Colors.red, //选中时的颜色
                    onChanged:(value){
                      setState(() {
                        _checkboxSelected=value;
                      });
                    } ,
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
                   Checkbox(
                      value: _checkboxSelected,
                      activeColor: Colors.red, //选中时的颜色
                      onChanged:(value){
                        setState(() {
                          _checkboxSelected=value;
                        });
                      } ,
                    )
                  ),""",
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