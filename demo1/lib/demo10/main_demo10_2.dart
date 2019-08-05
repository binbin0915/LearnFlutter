import 'package:demo1/res/Routers.dart';
import 'package:demo1/res/listData.dart';
import 'package:flutter/material.dart';


/**
 * 
 * Flutter AspectRatio、Card 卡片组件:
 * 
 * AspectRatio 组件是根据设置调整子元素 child 的宽高比。（宽高比是相对于父元素，让子元素铺满整个父元素）
 * 
 * 
 *  */

//  AspectRatio 组件
// 入口方法
// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // 获取路由参数
    var args = ModalRoute.of(context).settings.arguments;
    
    // MaterialApp 组件是作为根组件来使用的   
    // Scaffold 组件修饰，可设置导航栏
    return Scaffold(
        appBar: AppBar(
          title: Text(args),
        ),
        body: HomeContent(),
      );
  }
}

// AspectRatio 组件 

class HomeContent extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio( // 一般要做到平铺的话，会使用 AspectRatio 组件，此时铺满这个屏幕
        aspectRatio: 2.0/1.0, // 宽/高
        child: Container(
          color: Colors.red,
        ),
    );
  }
}