import 'package:flutter/material.dart';

import 'content_page.dart';
//底部导航框架
class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final _deafaultColor = Colors.grey;
  final _activeColor =  Colors.blueAccent;
  int _currenttype = 0;
  final ContentPagerController _contentPagerController = ContentPagerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         decoration: BoxDecoration(
            gradient: LinearGradient(colors:[
               Color(0xffedeef0),
               Color(0xffedeef0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
            )

         ),
         child: ContentPager(
           contentpageController: _contentPagerController,
           onPageChanged: (int index){
             setState(() {
                _currenttype = index;
             });
           },
         ),
       ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currenttype,
          type: BottomNavigationBarType.fixed ,
          onTap: (index){
            //控制内容滚到指定的内容
            _contentPagerController.jimpToPage(index);
            //修改状态
                setState(() {
                    _currenttype = index;
                });
          },
          items:[
          _bottomItem("本周", Icons.folder, 0),
          _bottomItem("分享", Icons.explore, 1),
          _bottomItem("免费", Icons.donut_small, 2),
          _bottomItem("本周", Icons.person, 3),
      ]),
    );
  }


  _bottomItem(String title,IconData icon,int index){
     return BottomNavigationBarItem(
         icon:Icon(
             icon,
             color:_deafaultColor ,
         ),
         activeIcon: Icon(
           icon,
           color: _activeColor,
         ),
       title: Text(title,style: TextStyle(color:_currenttype!= index?_deafaultColor:_activeColor ),)
     );
  }
}

