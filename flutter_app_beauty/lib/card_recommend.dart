import 'package:flutter/material.dart';

import 'base_cared.dart';
//本周推荐
class CardRecommend extends  BaseCard{
  @override
  _CardRecommendState createState() => _CardRecommendState();

}

class _CardRecommendState extends BaseCardState{
  @override
  void initState() {
    // TODO: implement initState
       subTitleColor = Color(0xffb99444);
    super.initState();
  }

  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(

      child:
      Container(
        margin:EdgeInsets.only(top: 20),
        child: Image.network('https://bkimg.cdn.bcebos.com/pic/5243fbf2b2119313ea93c8046c380cd790238db5?x-bce-process=image/watermark,g_7,image_d2F0ZXIvYmFpa2UyNzI=,xp_5,yp_5',fit: BoxFit.cover,),
      ),);
  }

  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle("本周推荐");
  }

  @override
  Widget subTitle(String title) {
    // TODO: implement subTitle
    return super.subTitle("送你一天天无限卡 全场书记免费送 >");
  }


}