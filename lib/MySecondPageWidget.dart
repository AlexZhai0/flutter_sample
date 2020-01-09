import 'package:flutter/material.dart';

// 第二个页面
class MySecondPageWidget extends StatelessWidget {
  final String text;

  MySecondPageWidget({
    Key key,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

//    var args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("第二个页面"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("接收到的内容：$text"),
            RaisedButton(
              child: Text("返回按钮"),
              onPressed: () => Navigator.pop(context, "返回给上一个页面的值"),
            )
          ],
        ),
      ),
    );
  }
}
