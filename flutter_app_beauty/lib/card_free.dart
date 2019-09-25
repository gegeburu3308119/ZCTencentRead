
//免费听书馆
import 'package:flutter/material.dart';

import 'base_cared.dart';

class CardFree extends BaseCard{

  @override
  _CardFreeState createState() => _CardFreeState();


}

const BOOK_LIST = [
  {'title':"暴力沟通","cover":"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=262755008,4053428017&fm=26&gp=0.jpg","price":"19.8",},
  {'title':"论中国","cover":"https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=638686839,2314581538&fm=26&gp=0.jpg","price":"19.8",},
  {'title':"饥饿的盛世，乾隆时代的得与失","cover":"https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3874294494,72631794&fm=26&gp=0.jpg","price":"19.8",},
  {'title':"原界剥离之术","cover":"https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1592979701,3565994658&fm=26&gp=0.jpg","price":"56.9",},
  {'title':"我就是风口","cover":"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1238956928,503557329&fm=26&gp=0.jpg","price":"88.8",},
  {'title':"大宋的智慧","cover":"https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2742556590,3520614853&fm=26&gp=0.jpg","price":"22.8",}
];
class _CardFreeState extends BaseCardState{

  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(child: Container(
       margin: EdgeInsets.only(top: 20),
       child:Column(
         children: <Widget>[
            //撑开高度
           Expanded(
             child:_bookList(),
           ),
           Padding(padding: EdgeInsets.only(bottom: 20),child:_bottomButton(),)
         ],
       ) ,
    ),);
  }

  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle('免费听书馆');
  }

  @override
  Widget subTitle(String title) {
      return super.subTitle("第 108 期");
  }

   _bookList(){
      return GridView.count(
        crossAxisCount: 3,
        //垂直间距
        mainAxisSpacing: 10,
        //水平间距
        crossAxisSpacing: 15,
        //长宽比
        childAspectRatio: 0.46,
        padding:
        EdgeInsets.only(left: 20,right: 20 ),
        children:
          BOOK_LIST.map((item){
             return _item(item);
          }).toList(),

      );

  }

  _bottomButton(){
       return
         FractionallySizedBox(//撑满
           widthFactor: 1,
           child:
            Padding(padding:EdgeInsets.only(left: 15,right: 15) ,child:
               RaisedButton(
                 shape:RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20),
                 ) ,
                 color:Colors.blueAccent ,
                 onPressed: (){

                 },child: Text('免费领取',style: TextStyle(color:Colors.white,fontSize: 14),),),
               )
           ,)
           ;
  }

   Widget  _item(Map<String,String>item){
    return Container(
      child: Column(
        //绝对布局
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
            Image.network(item["cover"],fit: BoxFit.cover,),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black38
              ),
              child: Icon(Icons.play_arrow,color: Colors.white,),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                   color: Colors.black38
                ),
                child: Text(
                  "原价${item['price']}",
                   style: TextStyle(color: Colors.white,fontSize: 12,
                   ),
                  overflow: TextOverflow.ellipsis,
                ),

              ),
            )
          ],),
          SizedBox(height: 10,),
          Text('${item["title"]}',style: TextStyle(fontSize: 15,color: Colors.black),overflow: TextOverflow.ellipsis,maxLines: 2,)
        ],
      ),
    );

  }

}

