import 'package:flutter/material.dart';
import 'package:multiscreen/multiscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: _MyPage(),
    );
  }
}

class _MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyPageState();
  }
}

class _MyPageState extends State<_MyPage> {
  Multiscreen _multiscreen;
  @override
  Widget build(BuildContext context) {
    /// init Multiscreen instance.
    _multiscreen ??= Multiscreen.of(context, 360);
    return Container(
      color: Colors.white,
      /// resize using Multiscreen.
      margin: EdgeInsets.only(top: _multiscreen.resize(80)),
      child: Align(
        alignment: Alignment.center,
        child: Column(children: <Widget>[
          MaterialButton(
            color: Colors.blue,
            height: _multiscreen.resize(40),
            minWidth: _multiscreen.resize(280),
            child: Text(
              'text',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: _multiscreen.resize(16)),
            ),
            onPressed: () {},
          ),
          MaterialButton(
            color: Colors.blue,
            height: _multiscreen.resize(40),
            minWidth: _multiscreen.resize(300),
            child: Text(
              'text',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: _multiscreen.resize(16)),
            ),
            onPressed: () {},
          ),
          MaterialButton(
            color: Colors.blue,
            height: _multiscreen.resize(40),
            minWidth: _multiscreen.resize(320),
            child: Text(
              'text',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: _multiscreen.resize(16)),
            ),
            onPressed: () {},
          ),
          MaterialButton(
            color: Colors.blue,
            height: _multiscreen.resize(40),
            minWidth: _multiscreen.resize(340),
            child: Text(
              'text',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: _multiscreen.resize(16)),
            ),
            onPressed: () {},
          ),
          MaterialButton(
            color: Colors.blue,
            height: _multiscreen.resize(40),
            minWidth: _multiscreen.resize(360),
            child: Text(
              'text',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: _multiscreen.resize(16)),
            ),
            onPressed: () {},
          ),
        ]),
      ),
    );
  }
}
