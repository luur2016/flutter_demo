import 'package:flutter/material.dart';
import 'package:flutter_app_demo/core/utils/app_utils.dart';

class TextFieldPage extends StatefulWidget {
  TextFieldPage({Key key}) : super(key: key);
  @override
  _TTextFieldPageState createState() => _TTextFieldPageState();
}

class _TTextFieldPageState extends State<TextFieldPage> {

  FocusNode focusNode1 = new FocusNode();

  @override
  Widget build(BuildContext context) {
    AppSize.init(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("输入框组件"),
        ),
        body:SingleChildScrollView(
          child: Center(
              child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextField(
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.characters,
                    ),
                    Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: """ TextField(
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.characters,
                ),""",
                              style: TextStyle(color: Colors.blue,fontSize:16)),
                        ]
                    )
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "请输入用户名",
                        prefixIcon: Icon(Icons.person),
                        // 未获得焦点下划线设为灰色
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        //获得焦点下划线设为蓝色
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                    Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: """  TextField(
                decoration: InputDecoration(
                  labelText: "请输入用户名",
                  prefixIcon: Icon(Icons.person),
                  // 未获得焦点下划线设为灰色
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  //获得焦点下划线设为蓝色
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),""",
                              style: TextStyle(color: Colors.blue,fontSize:16)),
                        ]
                    )
                    ),
                    // Container(
                    //   child: TextField(
                    //       keyboardType: TextInputType.emailAddress,
                    //       decoration: InputDecoration(
                    //           labelText: "Email",
                    //           hintText: "电子邮件地址",
                    //           prefixIcon: Icon(Icons.email),
                    //           border: InputBorder.none //隐藏下划线
                    //       )
                    //   ),
                    //   decoration: BoxDecoration(
                    //     // 下滑线浅灰色，宽度1像素
                    //       border: Border(bottom: BorderSide(color: Colors.grey[200], width: 1.0))
                    //   ),
                    // )
                  ]
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