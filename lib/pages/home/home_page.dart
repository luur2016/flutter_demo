import 'package:flutter/material.dart';
import 'package:flutter_app_demo/core/utils/app_utils.dart';
import 'package:flutter_app_demo/pages/home/checkbox_page.dart';
import 'package:flutter_app_demo/pages/home/image_page.dart';
import 'package:flutter_app_demo/pages/home/process_page.dart';
import 'package:flutter_app_demo/pages/home/text_page.dart';
import 'package:flutter_app_demo/pages/home/textfield_page.dart';

import '../common.dart';
import 'button_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  List<Item> basicItem = [];

  @override
  Widget build(BuildContext context) {
    AppSize.init(context);
    Widget divider1=Divider(color: Colors.blue,);
    Widget divider2=Divider(color: Colors.green);

    return Scaffold(
      appBar: AppBar(
        title: Text("可滚动组件"),
      ),
      body:ListView.separated(
        itemCount: basicItem.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: ListTile(title: Text(basicItem[index].name)),
            onTap: ()=> this.toPage(basicItem[index].id),
          );
        },
        //分割器构造器
        separatorBuilder: (BuildContext context, int index) {
          return index%2==0?divider1:divider2;
        },
      )
    );
  }


  @override
  void initState() {
    super.initState();
    Item textFieldItem = Item(1, "文本及样式");
    basicItem.add(textFieldItem);
    Item buttonItem = Item(2, "按钮");
    basicItem.add(buttonItem);
    Item imageItem = Item(3, "图片");
    basicItem.add(imageItem);
    Item checkboxItem = Item(4, "单选多选");
    basicItem.add(checkboxItem);
    Item inputItem = Item(5, "输入框");
    basicItem.add(inputItem);
    Item processItem = Item(6, "进度条");
    basicItem.add(processItem);
  }

  void toPage(num index){
    Widget page;
    switch(index){
      case 1 :
        page = TextPage();
        break;
      case 2 :
        page = ButtonPage();
        break;
      case 3 :
        page = ImagePage();
        break;
      case 4 :
        page = CheckBoxPage();
        break;
      case 5:
        page = TextFieldPage();
        break;
      case 6 :
        page = ProcessPage();
        break;
    }
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => page),
    );
  }

}