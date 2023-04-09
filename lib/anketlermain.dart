import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_jam/models/sorular.dart';
import 'package:app_jam/screens/flutteranketmain.dart';
import 'package:app_jam/screens/girisimcilikanketmain.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: MainScreen());
  }
}

class MainScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainScreenState();
  }

}
class _MainScreenState extends State {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              'Anketler',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: buildBody());
  }

  buildBody() {
    return Column(
      children: <Widget>[
        Expanded(
          child: Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: Size(300, 100),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SurveyScreen()));
                },
                child: Text("Flutter Eğitimi Anketleri")
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  fixedSize: Size(300, 100),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ESurveyScreen()));
                },
                child: Text("Teknoloji Girişimciliği Anketleri")
            ),
          ),
        ),
      ],
    );
  }

}
