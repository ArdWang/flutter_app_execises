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

  //自定义方法
  Widget _getListData(context,index){
    return ListTile(
          leading: Image.network(listData[index]['imageUrl']),
          title:Text(listData[index]['title']),
          subtitle: Text(listData[index]['author']),
        );
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: _getListData,
    );
  }
}
