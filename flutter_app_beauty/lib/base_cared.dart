import 'package:flutter/material.dart';

class BaseCard extends StatefulWidget {
  @override
  BaseCardState createState() => BaseCardState();
}

class BaseCardState extends State<BaseCard> {
  Color subTitleColor = Colors.grey;
  Color bottomtleColor = Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    return PhysicalModel(color: Colors.transparent,borderRadius: BorderRadius.circular(6),clipBehavior: Clip.antiAlias,
     child: Container(
       decoration: BoxDecoration(color: Colors.white),
       child: Column(
          children: <Widget>[
              topContent(),
              bottomContent()
          ],
       ),
     ),
    );
  }

  topContent(){
      return Padding(padding: EdgeInsets.only(left: 20,top: 20),
        child:Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                    topTitle(''),topTitle2()
                ],
              ),
               subTitle('')

           ],
        ) ,
      );
  }

  bottomContent(){

    return Container();

  }

  Widget subTitle(String title) {
      return  Padding(padding: EdgeInsets.only(top: 5),
      child: Text(title,style: TextStyle(fontSize: 11,color: subTitleColor),),);
  }

  topTitle(String  title){
     return Text(title,style:TextStyle(fontSize: 22),);

  }

  topTitle2(){
     return Container();

  }

  bottomTitle(String title){

    return Text(title,style: TextStyle(fontSize: 12,color:bottomtleColor ),);
  }

}
