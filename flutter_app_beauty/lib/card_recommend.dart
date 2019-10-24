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
        child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1570002276&di=1a4d4601af523934c77e64014ac3409b&imgtype=jpg&er=1&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F0107255d51089ca80120695c3067a9.jpg%401280w_1l_2o_100sh.jpg',fit: BoxFit.cover,),
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