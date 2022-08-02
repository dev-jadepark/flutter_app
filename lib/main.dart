import 'package:flutter/material.dart';

// 앱 시작 부분
void main() => runApp(MyApp());

// 시작 클래스. 머티리얼 디자인 앱 생성
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

// 시작 클래스가 실제로 표시하는 클래스. 카운터 앱 화면
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// StatelessWidget 클래스 빠르게 작성하기 => stless Enter

// 위 MyHomePage 클래스의 상태를 나타내는 State 클래스

/*
자주사용하는 위젯
1. 컨테이너
 기본적으로 Column과 Row를 조합하여 리스트의 형태로 만든다.
 Column은 세로
 Row는 가로

 Column(
  children: <Widget>[
    Container(),
    Container(),
    COntainer(),
  ],
 )

 mainAxis는 위젯의 기본방향
 crossAxis는 위젯의 기본방향의 반대방향

 Row(
  mainAxisSize: MainAxisSize.max,
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
    Container(),
    Container(),
    Container(),
  ],
 )
 */
class _MyHomePageState extends State<MyHomePage> {
  var _text = 'Hello';

  @override
  Widget build(BuildContext buildContext){
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body:
          Row(
            mainAxisSize: MainAxisSize.max, //가로로 꽉 채우기   max, min
            mainAxisAlignment: MainAxisAlignment.center,  //가로방향으로 가운데 정렬하기 center, start, end
            crossAxisAlignment: CrossAxisAlignment.center,  //세로 방향으로 가운데 정렬하기
            children: <Widget>[
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
              ),
              Container(
                color: Colors.green,
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
              ),
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
              )
            ],
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _text = 'World';
          });
        },
        child: Icon(Icons.touch_app),
      ),
    );
  }
}
