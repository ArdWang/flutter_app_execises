import 'package:flutter/material.dart';

// 列表组件 ListView 

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
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Image.network('http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg'),
        Container(
          child: Text(
            '我是一个标题',
            textAlign:TextAlign.center,
            style: TextStyle(
              fontSize:28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network('http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg'),
      ],

    );
  }
}
