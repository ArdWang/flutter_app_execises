# flutterappexecises

A new Flutter application.

## Getting Started

图片有时候加载不出来请这么处理

今天发现一个Flutter加载图片的大坑，当我按照谷歌文档使用Image.asset方式加载本地图片的时候，一直报 flutter - FlutterError: Unable to load asset 这个错误，后台死活以为是自己的文件夹创建错误或者是本人的问题，结果最后发现是数据bulid生成的问题解决方式如下：

进入当前Flutter工程的根目录，建议使用终端进入
执行：flutter clean
flutter clean

https://blog.csdn.net/qq_32228189/article/details/102758636