import 'dart:async';

import 'package:flutter/services.dart'; 

import 'package:flutter/material.dart';

class Bgf {
  static const MethodChannel _channel =
      const MethodChannel('bgf');//MethodChannel就是我们的信使，负责dart和原生代码通信
      //flutter通过一个具体的名字能才够在对应平台上找到对应的MethodChannel，从而实现flutter与平台的交互。
      //同样地，我们在对应的平台上也要注册名为com.jarvanmo/fluwx的MethodChannel。


  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

class MyButtonA extends StatelessWidget {
  final double height;
  final double width;
  final text;
  final press;
  const MyButtonA({this.text='',this.press=null,this.width=100.0,this.height=30.0});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: press,
      ),
    );
  }
}
