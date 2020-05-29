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
      padding: EdgeInsets.all(
        10,
      ),
      children: <Widget>[
        ListTile(
          leading: Image.network('http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg'),
          trailing: Image.network('http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg'),  
          title: Text('华北温度垂直下降了好多读呢',
            style: TextStyle(
              fontSize:18.0,
            ),
          ),
          subtitle: Text('华北温度垂直下降了读呢华北温度垂直下降了好多读呢'),
        ),
       
      ],
    );
  }
}
