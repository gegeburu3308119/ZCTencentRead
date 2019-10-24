
import 'package:flutter/material.dart';


Widget redBox = DecoratedBox(decoration:BoxDecoration(color: Colors.red));
class ConsBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity,
        minHeight: 50.0
      ),
      child: Container(
        height: 5.0,
        child: Chip(label: null,avatar: null,),
      ),

    );
  }
}
