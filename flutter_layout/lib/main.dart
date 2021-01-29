import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var titleSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
            Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.grey, fontSize: 26)),
          ],),
          Padding(padding: EdgeInsets.all(20.0),),
        Icon(Icons.star, size: 35, color: Colors.deepOrange,),
        Text('41', style: TextStyle(fontSize: 30),),
    ],);
    var buttonSection = Row(children: [
      Column(children: [Icon(Icons.call), Text('CALL')],),
      Column(children: [Icon(Icons.near_me), Text('ROUTE')],),
      Column(children: [Icon(Icons.share), Text('SHARE')],),
    ],);
    var textSection = Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.',
    );
    return Scaffold(
      body: Column(
        children: [
          Image.network("https://t1.daumcdn.net/cfile/tistory/99880033599F790206",
            height: 240, width: 600, fit: BoxFit.cover,),
          titleSection,
          buttonSection,
          textSection,

        ],
      ),
    );
  }
}
