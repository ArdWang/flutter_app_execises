import 'package:flutter/material.dart';

// 列表组件 ListView 水平列表

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("flutter demo"),
      ),
      body: HomeContent(),
    ));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.deepOrange,
          ),
          Container(
            width: 180.0,
    
            color: Colors.blue,
            child: ListView(
              children:<Widget>[
                Image.network(
                  'http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',
                  width: 180,
                  height: 100,
                ),
                Text('我是一个文本呢'),
              ]
            ),
          ),
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.yellow,
          ),
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.green,
          ),
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.brown,
          ),
        ],
      ),
    );
  }
}
