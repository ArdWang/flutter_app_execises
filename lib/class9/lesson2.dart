import 'package:flutter/material.dart';
import '../res/listData.dart';

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

  List<Widget> _getListData(){
    List<Widget> list = new List();
    for(var i=0;i<20;i++){
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          '这是第$i条数据',
          style:TextStyle(color:Colors.white, fontSize:20),
        ),
        color: Colors.blue,
      ));
    }
    return list;
  }


  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 20.0, //水平的距离
      mainAxisSpacing: 20.0, //垂直的距离
      padding: EdgeInsets.all(10),
      crossAxisCount: 2,
      childAspectRatio: 0.7, //宽度和高度的比列
      children:_getListData(),
    );
  }
}
