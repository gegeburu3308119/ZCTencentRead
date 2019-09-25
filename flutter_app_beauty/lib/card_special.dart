//长安十二时辰

import 'package:flutter/material.dart';

import 'base_cared.dart';

class CardSpecail extends BaseCard{

  @override
   _CardSpecialState createState() =>  _CardSpecialState();
}

class _CardSpecialState extends BaseCardState{
  @override
  void initState() {
    // TODO: implement initState
    bottomtleColor = Colors.blueAccent;
    super.initState();
  }
  @override
  topContent() {
    // TODO: implement topContent
    return Column(
        children: <Widget>[
          Container(
            padding:EdgeInsets.only(left: 66,right:66,top: 36,bottom: 30),
            decoration: BoxDecoration(
               color:Color(0xfffffcf7),
            ),
            child:Container(
              decoration:BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 20,
                    offset: Offset(0, 10)
                  )
                ]
              ) ,
              child: Image.network("https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3678876499,1364473981&fm=26&gp=0.jpg"),
            ) ,
          ),
          Container(
            padding: EdgeInsets.only(left: 20,top: 15,bottom: 15,right: 20),
            decoration: BoxDecoration(color: Color(0xfff7f3ea)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: <Widget>[
                  Text('长安十二时辰...',style:TextStyle(fontSize: 18,color: Color(0xff473b25)) ,),
                  Padding(padding: EdgeInsets.only(top: 5),child:
                  Text("马伯庸",style: TextStyle(fontSize: 13,color:Color(0xff7d725c) ),),)
                ],
            ),
              Container(
                margin: EdgeInsets.only(right: 20),
                padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [Color(0xffd9bc82),Color(0xffecd9ae)])
                ),
                child: Text('分享免费领',style: TextStyle(color: Color(0xff4f3b1a),fontSize: 13),),
              )
              ],
            ),
          )
        ],
    );
  }

  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
            Padding(padding:EdgeInsets.only(left: 20) ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.star,color: Colors.yellow,size: 26,),
                SizedBox(height: 10,),
                Text('揭露历史真相,张小敬出身唐朝军人，之后退伍任唐城地方安保，长期协调维护地方安全工作，后因处事不当违反唐律被关押狱中。负责唐城保安工作的靖安司发现了混入唐.',maxLines: 4,)
              ],
            ),),
          bottomTitle('更多免费好书领不听')
        ],
      ),

    );
  }

  @override
  bottomTitle(String title) {
    // TODO: implement bottomTitle
    return Text(
      title,
      textAlign:TextAlign.center,
      style: TextStyle(fontSize:12, color: bottomtleColor),
    );
  }

}