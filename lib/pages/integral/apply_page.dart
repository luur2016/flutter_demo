
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/core/utils/app_utils.dart';
import 'package:flutter_app_demo/pages/integral/single_child_scroll_view_page.dart';

import '../common.dart';
import 'grid_view_page.dart';
import 'list_view_page.dart';

class ApplyPage extends StatefulWidget {
  ApplyPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ApplyPageState createState() => _ApplyPageState();
}


class _ApplyPageState extends State<ApplyPage> {
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
    Item textFieldItem = Item(1, "SingleChildScrollView");
    basicItem.add(textFieldItem);
    Item buttonItem = Item(2, "ListView");
    basicItem.add(buttonItem);
    Item imageItem = Item(3, "GridView");
    basicItem.add(imageItem);
    Item checkboxItem = Item(4, "CustomScrollView");
  }

  void toPage(num index){
    Widget page;
    switch(index){
      case 1 :
        page = SingleChildScrollViewPage();
        break;
      case 2 :
        page = ListViewPage();
        break;
      case 3 :
        page = GridViewPage();
        break;
      case 4 :
        // page = CheckBoxPage();
        break;
    }
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => page),
    );
  }
}