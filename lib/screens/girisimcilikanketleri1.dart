import 'package:app_jam/screens/girisimcilikanketleri1-2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_jam/screens/uyari.dart';


class E1SurveyScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _E1SurveyScreenState();
  }

}
class _E1SurveyScreenState extends State{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              'Temel Girişimcilik Eğitimi Anketi',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: buildBody());
  }

  buildBody() {
    return Column(
        children: [
          Expanded(
            flex:1,
            child: Center(
              child: Text(
                "Temel girişimcilik eğitimini tamamladınız mı?",
                style: TextStyle(fontSize: 30.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ESurveyQScreen()));
                        },
                        child: Text('EVET')
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AttenScreen()));
                        },
                        child: Text('HAYIR')
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]);
  }
}