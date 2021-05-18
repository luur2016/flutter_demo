import 'package:flutter/material.dart';
import 'package:flutter_app_demo/core/utils/app_utils.dart';

import '../common.dart';
import 'GestureDetectorTestRoute.dart';
import 'RouterTestRoute.dart';
import 'ScaffoldRoute.dart';
import 'container_page.dart';
import 'layout_page.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage>
    with AutomaticKeepAliveClientMixin<MinePage> {

  @override
  bool get wantKeepAlive => true;

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
    Item containerItem = Item(1, "容器");
    basicItem.add(containerItem);
    Item layoutItem = Item(2, "布局-1");
    basicItem.add(layoutItem);
    Item layoutItem2 = Item(3, "布局-2");
    basicItem.add(layoutItem2);
    Item gestureItem = Item(4, "手势操作");
    basicItem.add(gestureItem);
    Item navItem = Item(5, "页面路由");
    basicItem.add(navItem);
    Item animationItem = Item(6, "动画效果");
    basicItem.add(animationItem);
    Item networkItem = Item(7, "网络(dio库)");
    basicItem.add(networkItem);
  }

  void toPage(num index){
    Widget page;
    switch(index){
      case 1 :
        page = ContainerPage();
        break;
      case 2 :
        page = ScaffoldRoute();
        break;
      case 3 :
        page = LayoutPage();
        break;
      case 4 :
        page = GestureDetectorTestRoute();
        break;
      case 5 :
        page = RouterTestRoute();
        break;
      default:
        return;
    }
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => page),
    );
  }
}
