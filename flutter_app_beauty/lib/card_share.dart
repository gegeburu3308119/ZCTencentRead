//分享得联名卡

import 'package:flutter/material.dart';

import 'base_cared.dart';

class CardShare extends BaseCard{

   @override
   _CardShareSatate createState() {
    // TODO: implement createState
    return _CardShareSatate();
  }

}

class _CardShareSatate  extends BaseCardState{

  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(child:Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Color(0xfff6f7f9)
      ),
      child: Column(
        children: <Widget>[
          Expanded(child: Padding(padding: EdgeInsets.only(bottom: 10),
          child: Container(
            constraints:BoxConstraints.expand() ,
            child:  Image.network("https://bkimg.cdn.bcebos.com/pic/e850352ac65c1038066af876bb119313b07e8969?x-bce-process=image/watermark,g_7,image_d2F0ZXIvYmFpa2UyNzI=,xp_5,yp_5",
              fit: BoxFit.cover,),
          ),
    ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: bottomTitle('28973894 ~ 参加活动'),
          )
        ],
      ),
    ) ,);
  }
   @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle('分享的联名卡');
  }

   @override
   Widget subTitle(String title){
      return super.subTitle("分享给朋友最多可获得12天无限卡");
   }

   @override
  topTitle2() {
    // TODO: implement topTitle2
    return Padding(
    padding: EdgeInsets.only(bottom: 5),
    child:Text('/第19期',style: TextStyle(fontSize: 10),),);

  }




}
