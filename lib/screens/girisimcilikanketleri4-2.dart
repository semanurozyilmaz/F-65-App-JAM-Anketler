import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_jam/models/sorular.dart';
import 'package:app_jam/screens/thanks2.dart';

class E4SurveyQScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _E4SurveyQScreenState();
  }

}
class _E4SurveyQScreenState extends State{
  test myTest4 = test();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              'Girişimciler için IK Eğitimi Anketi',
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
                myTest4.writeQuestion(),
                style: TextStyle(fontSize: 30.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    fixedSize: Size(200, 30),
                  ),
                  onPressed: (){
                    setState(() {
                      if(Qn.length-1 > myTest4.active_question) {
                        myTest4.nextQuestion();
                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Thanks2Screen()));
                        myTest4.active_question = 0;
                      }
                    });
                  },
                  child: Text(myTest4.writeAnswera())
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    fixedSize: Size(200, 30),
                  ),
                  onPressed: (){
                    setState(() {
                      if(Qn.length-1 > myTest4.active_question) {
                        myTest4.nextQuestion();
                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Thanks2Screen()));
                        myTest4.active_question = 0;
                      }
                    });
                  },
                  child: Text(myTest4.writeAnswerb())
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: Size(200, 30),
                  ),
                  onPressed: (){
                    setState(() {
                      if(Qn.length-1 > myTest4.active_question) {
                        myTest4.nextQuestion();
                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Thanks2Screen()));
                        myTest4.active_question = 0;
                      }
                    });
                  },
                  child: Text(myTest4.writeAnswerc())
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    fixedSize: Size(200, 30),
                  ),
                  onPressed: (){
                    setState(() {
                      if(Qn.length-1 > myTest4.active_question) {
                        myTest4.nextQuestion();
                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Thanks2Screen()));
                        myTest4.active_question = 0;
                      }
                    });
                  },
                  child: Text(myTest4.writeAnswerd())
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    fixedSize: Size(200, 30),
                  ),
                  onPressed: (){
                    setState(() {
                      if(Qn.length-1 > myTest4.active_question) {
                        myTest4.nextQuestion();
                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Thanks2Screen()));
                        myTest4.active_question = 0;
                      }
                    });
                  },
                  child: Text(myTest4.writeAnswere())
              ),
            ),
          ),
        ]);
  }
}