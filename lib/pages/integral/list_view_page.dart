import 'package:flutter/material.dart';
import 'package:flutter_app_demo/core/utils/app_utils.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key key}) : super(key: key);
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    AppSize.init(context);

    Widget divider1=Divider(color: Colors.blue,);
    Widget divider2=Divider(color: Colors.green);

    return Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body:ListView.separated(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: ListTile(title: Text(index.toString())),
              onTap: ()=> {

              },
            );
          },
          // 分割器构造器
          separatorBuilder: (BuildContext context, int index) {
            return index%2==0?divider1:divider2;
          },
        )
    );
  }


  @override
  void initState() {
    super.initState();
  }
}