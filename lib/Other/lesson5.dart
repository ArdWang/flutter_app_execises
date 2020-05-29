import 'package:flutter/material.dart';

// 圆角图片学习

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
            // borderRadius: BorderRadius.all(
            //   Radius.circular(150),
            // ),
            borderRadius: BorderRadius.circular(150),
            image: DecorationImage(
              image: NetworkImage(
                "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg",
              ),
              fit: BoxFit.fill,
            ),
          ),
      ),
    );
  }
}
