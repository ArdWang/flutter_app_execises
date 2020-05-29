import 'package:flutter/material.dart';



void main(){
  runApp(MyApp());
}


//自定义组件
//无状态组件
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title: Text(
            'Flutter Demo'
          ),
        ),
        body: HomeContent(),
      
      ),
      theme: ThemeData(
        primarySwatch:Colors.yellow,
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          '你好Flutter1111',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize:40.0,
            //color:Colors.yellow,
            color: Colors.red,
          ),
        ),
      );
  }
}