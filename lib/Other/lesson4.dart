import 'dart:ui';

import 'package:flutter/material.dart';

// 图片学习

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title: Text("flutter demo"),
        ),
        body:HomeContent(),
      )
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Center(
      //容器
      child: Container(
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
            color:Colors.yellow,
          ),
          child: Image.network(
            'http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',
            alignment: Alignment.topLeft,
            // color: Colors.blue,
            // colorBlendMode: BlendMode.screen,
            //fit:BoxFit.fill,
            repeat: ImageRepeat.repeatX,
            ),
      ),
    );
  }
}
