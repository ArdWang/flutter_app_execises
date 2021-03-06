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
  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            SizedBox(
              height: 10,
            ),
            Text(
              value['title'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(233, 233, 233, 0.9),
            width: 1,
          ),
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10.0, //水平的距离
      mainAxisSpacing: 10.0, //垂直的距离
      padding: EdgeInsets.all(10),
      crossAxisCount: 2,
      //childAspectRatio: 0.7, //宽度和高度的比列
      children: _getListData(),
    );
  }
}
