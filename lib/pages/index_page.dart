import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_app_demo/core/utils/app_utils.dart';
import 'package:flutter_app_demo/pages/home/home_page.dart';
import 'package:flutter_app_demo/pages/integral/apply_page.dart';

import 'mine/mine_page.dart';

class IndexPage extends StatefulWidget {

  @override
  _IndexPageState createState() => _IndexPageState();
}


class _IndexPageState extends State<IndexPage>  with AutomaticKeepAliveClientMixin {
  LayoutType _layoutSelection = LayoutType.home;
  int currentIndex=0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppSize.init(context);
    return new Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildButtonNavBar(),
    );
  }

  BottomNavigationBarItem _buildItem({IconData iconData, LayoutType layoutSelection}) {
    String text = getLayoutName(layoutSelection);
    return BottomNavigationBarItem(
      icon: Icon(iconData),
      label: text,
      backgroundColor:  _colorTabMatching(layoutSelection: layoutSelection)
    );
  }

  Widget _buildButtonNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(iconData: FontAwesomeIcons.home, layoutSelection: LayoutType.home),
        _buildItem(iconData: FontAwesomeIcons.file, layoutSelection: LayoutType.apply),
        _buildItem(iconData: FontAwesomeIcons.accusoft, layoutSelection: LayoutType.mine),
      ],
      selectedItemColor: AppColors.colorRGB1e8ff2,
      currentIndex: this.currentIndex,
      onTap: _onSelectTab,
    );
  }

  void _onSelectTab(int index) {
    this.currentIndex = index;
    switch (index) {
      case 0:
        _onLayoutSelected(LayoutType.home);
        break;
      case 1:
        _onLayoutSelected(LayoutType.apply);
        break;
      case 2:
        _onLayoutSelected(LayoutType.mine);
        break;
    }
  }

  void _onLayoutSelected(LayoutType selection) {
    setState(() {
      _layoutSelection = selection;
    });
  }

  Color _colorTabMatching({LayoutType layoutSelection}) {
    return _layoutSelection == layoutSelection ? Colors.cyan[300] : Colors.grey;
  }

  Widget _buildBody() {
    LayoutType layoutSelection = _layoutSelection;
    switch (layoutSelection) {
      case LayoutType.home:
        return HomePage();
      case LayoutType.apply:
        return ApplyPage();
      case LayoutType.mine:
        return MinePage();
    }
  }

  @override
  bool get wantKeepAlive => true;
}

enum LayoutType {
  home,
  apply,
  mine,
}


String getLayoutName(LayoutType layoutType) {
  switch (layoutType) {
    case LayoutType.home:
      return '基础组件';
    case LayoutType.apply:
      return '可滚动组件';
    case LayoutType.mine:
      return '更多';
    default:
      return '';
  }
}