import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_beauty/card_recommend.dart';

import 'card_free.dart';
import 'card_share.dart';
import 'card_special.dart';
import 'customer_appBar.dart';

class ContentPager extends StatefulWidget {
  final ValueChanged<int> onPageChanged;
  final ContentPagerController  contentpageController;
  //构造方法,可选参数   super 初始化列表
  const ContentPager({Key key, this.onPageChanged, this.contentpageController}) : super(key: key);
  @override
  _ContentPagerState createState() => _ContentPagerState();
}

class _ContentPagerState extends State<ContentPager> {

  PageController  _pageViewController = PageController(
      viewportFraction:0.8
  );
  static List<Color> _colors = [
    Colors.blue,
    Colors.red,
    Colors.deepOrange,
    Colors.teal,
  ];
  @override
  void initState() {
    if(widget.contentpageController != null){
        widget.contentpageController._pageController =  _pageViewController;
    }
    _statusBar();
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //appbar
         CustomAppAbr(),
         Expanded(child:PageView(
           onPageChanged:widget.onPageChanged ,
           controller: _pageViewController,
           children: <Widget>[
             _WrapItem(CardRecommend()),
             _WrapItem(CardShare()),
             _WrapItem(CardFree()),
             _WrapItem(CardSpecail()),
           ],

         ) ,)

      ],
    );

  }

  Widget _WrapItem(Widget widget){

    return Padding(padding: EdgeInsets.all(10),
        child: widget,
    );
  }
  //沉浸式状态栏
  _statusBar(){
     SystemUiOverlayStyle uiOverlayStyle = SystemUiOverlayStyle(
       systemNavigationBarColor: Color(0xFF000000),
       systemNavigationBarDividerColor: null,
       statusBarColor: Colors.transparent,
       systemNavigationBarIconBrightness: Brightness.light,
       statusBarIconBrightness: Brightness.dark,
       statusBarBrightness: Brightness.light,
     );
     SystemChrome.setSystemUIOverlayStyle(uiOverlayStyle);
  }

}

//内容区域的控制器
class ContentPagerController{
  PageController _pageController;
   void jimpToPage(int page){
     //dart的编程技巧 安全调用
      _pageController?.jumpToPage(page);
   }

}

