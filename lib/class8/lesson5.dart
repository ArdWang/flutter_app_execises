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

  List list = new List();

  HomeContent(){
     for(var i=0;i<20;i++){
      this.list.add('我是第$i条数据');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.list.length,
      itemBuilder: (context,index){
        return ListTile(
          title:Text(this.list[index]),
        );
      },
    );
  }
}
