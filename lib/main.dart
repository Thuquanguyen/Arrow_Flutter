import 'package:example/widget_arrows.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: MyHomePage(),
      );
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool showArrows = true;
  var isCheckConfirm = [false,false,false];
  var isChecked = [false,false,false,false];

  @override
  Widget build(BuildContext context) => ArrowContainer(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Arrows everywhere'),
          ),
          body: Container(child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ArrowElement(
                  show: isChecked[0],
                  id: 'cntt',
                  targetId: isCheckConfirm[0] ? 'p1' : null,
                  sourceAnchor: Alignment.bottomCenter,
                  targetAnchor: Alignment.topCenter,
                  color: Colors.purple,
                  child: RaisedButton(child: Text("Phòng CNTT",textAlign: TextAlign.center,),color: Colors.purple, onPressed: (){
                    if(isChecked[1] && !isCheckConfirm[1]){
                      setState(() {
                        isCheckConfirm[0] = false;
                      });
                    }
                  },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                ),
                ArrowElement(
                  show: isChecked[1],
                  id: 'p1',
                  targetId: isChecked[1] ? ((!isCheckConfirm[0]) ? 'cntt' : (isCheckConfirm[1] ? 'p2' : null)) : null,
                  sourceAnchor: isChecked[1] ? ((!isCheckConfirm[0]) ? Alignment.topCenter : Alignment.bottomCenter) : Alignment.bottomCenter,
                  targetAnchor: isChecked[1] ? ((!isCheckConfirm[0]) ? Alignment.bottomCenter : Alignment.topCenter) : Alignment.topCenter,
                  color: Colors.yellow,
                  child: RaisedButton(child: Text("Phòng kế toán",textAlign: TextAlign.center,),color: Colors.yellow, onPressed: () {
                    setState(() {
                      if (isCheckConfirm[1] && !isCheckConfirm[2]){
                        isCheckConfirm[1] = false;
                      }else{
                        isCheckConfirm[0] = true;
                      }
                      isChecked[0] = true;
                      isChecked[1] = true;
                    });
                  },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                ),
                ArrowElement(
                  show: isChecked[2],
                  id: 'p2',
                  targetId: isChecked[2] ? ((!isCheckConfirm[1]) ? 'p1' : (isCheckConfirm[2] ? 'p3' : null)) : null ,
                  sourceAnchor: isChecked[2] ? ((!isCheckConfirm[1]) ? Alignment.topCenter : Alignment.bottomCenter) : Alignment.bottomCenter ,
                  targetAnchor: isChecked[2] ? ((!isCheckConfirm[1]) ? Alignment.bottomCenter : Alignment.topCenter) : Alignment.topCenter,
                  color: Colors.green,
                  child: RaisedButton(child: Text("Phòng kế hoạch",textAlign: TextAlign.center,),color: Colors.green, onPressed: () {
                    if (isCheckConfirm[0]){
                      setState(() {
                        if (isCheckConfirm[2]){
                          isCheckConfirm[2] = false;
                        }else{
                          isCheckConfirm[1] = true;
                        }
                        isChecked[2] = true;
                      });
                    }
                  },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                ),
                ArrowElement(
                  id: 'p3',
                  targetId: isChecked[3] ? ((!isCheckConfirm[2]) ? 'p2' : null) : null ,
                  sourceAnchor: isChecked[3] ? ((!isCheckConfirm[2]) ? Alignment.topCenter : Alignment.bottomCenter) : Alignment.bottomCenter,
                  targetAnchor: isChecked[3] ? ((!isCheckConfirm[2]) ? Alignment.bottomCenter : Alignment.topCenter) : Alignment.topCenter,
                  color: Colors.red,
                  child: RaisedButton(child: Text("Ban giám đốc",textAlign: TextAlign.center,),color: Colors.red, onPressed: () {
                    if (!isCheckConfirm[2] && isCheckConfirm[1]){
                      setState(() {
                        isCheckConfirm[2] = true;
                        isChecked[3] = true;
                      });
                    }
                  },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                )
              ],
            ),
          ),margin: EdgeInsets.all(10),),
        ),
      );
}
