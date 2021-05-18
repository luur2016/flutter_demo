import 'package:flutter/material.dart';
import 'package:flutter_app_demo/core/utils/app_utils.dart';

class GridViewPage extends StatefulWidget {
  GridViewPage({Key key}) : super(key: key);
  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {

  List<IconData> _icons = [];

  @override
  Widget build(BuildContext context) {
    AppSize.init(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("GridView组件"),
        ),
        body:Center(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, //每行三列
                  childAspectRatio: 1.0 //显示区域宽高相等
              ),
              itemCount: _icons.length,
              itemBuilder: (context, index) {
                //如果显示到最后一个并且Icon总数小于200时继续获取数据
                if (index == _icons.length - 1 && _icons.length < 200) {
                  _retrieveIcons();
                }
                // return Icon(_icons[index]);
                return Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 1,
                      )
                  ),
                  child: Column(
                    children: <Widget>[
                      Icon(_icons[index])
                    ],
                  ),
                );
              }
          )
        )
    );
  }

  void _retrieveIcons() {
    Future.delayed(Duration(milliseconds: 200)).then((e) {
      setState(() {
        _icons.addAll([
          Icons.ac_unit,
          Icons.airport_shuttle,
          Icons.all_inclusive,
          Icons.beach_access, Icons.cake,
          Icons.free_breakfast
        ]);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _retrieveIcons();
  }
}