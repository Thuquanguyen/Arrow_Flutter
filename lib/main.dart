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
  var isCheckConfirm = [false,false,false,false,false,false];
  var isChecked = [false,false,false,false,false,false,false];
  var listTitle = ["Phòng CNTT","Phòng kế toán","Phòng kế hoạch","Phòng ABC","Phòng BCD","Phòng CDE","Ban giám đốc"];

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
                  id: 'p0',
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
                  targetId: isChecked[1] ? ((!isCheckConfirm[0]) ? 'p0' : (isCheckConfirm[1] ? 'p2' : null)) : null,
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
                    if (isCheckConfirm[0] && !isCheckConfirm[3]){
                      setState(() {
                        if (isCheckConfirm[2]  || isCheckConfirm[1]){
                          isCheckConfirm[2] = false;
                        }else{
                          isCheckConfirm[1] = true;
                        }
                        isChecked[2] = true;
                      });
                    }
                  },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                ),ArrowElement(
                  show: isChecked[3],
                  id: 'p3',
                  targetId: isChecked[3] ? ((!isCheckConfirm[2]) ? 'p2' : (isCheckConfirm[3] ? 'p4' : null)) : null ,
                  sourceAnchor: isChecked[3] ? ((!isCheckConfirm[2]) ? Alignment.topCenter : Alignment.bottomCenter) : Alignment.bottomCenter ,
                  targetAnchor: isChecked[3] ? ((!isCheckConfirm[2]) ? Alignment.bottomCenter : Alignment.topCenter) : Alignment.topCenter,
                  color: Colors.green,
                  child: RaisedButton(child: Text("Phòng ABC",textAlign: TextAlign.center,),color: Colors.green, onPressed: () {
                    if (isCheckConfirm[1] && !isCheckConfirm[4]){
                      setState(() {
                        if (isCheckConfirm[3]  || isCheckConfirm[2]){
                          isCheckConfirm[3] = false;
                        }else{
                          isCheckConfirm[2] = true;
                        }
                        isChecked[3] = true;
                      });
                    }
                  },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                ),ArrowElement(
                  show: isChecked[4],
                  id: 'p4',
                  targetId: isChecked[4] ? ((!isCheckConfirm[3]) ? 'p3' : (isCheckConfirm[4] ? 'p5' : null)) : null ,
                  sourceAnchor: isChecked[4] ? ((!isCheckConfirm[3]) ? Alignment.topCenter : Alignment.bottomCenter) : Alignment.bottomCenter ,
                  targetAnchor: isChecked[4] ? ((!isCheckConfirm[3]) ? Alignment.bottomCenter : Alignment.topCenter) : Alignment.topCenter,
                  color: Colors.green,
                  child: RaisedButton(child: Text("Phòng ABC",textAlign: TextAlign.center,),color: Colors.green, onPressed: () {
                    if (isCheckConfirm[2] && !isCheckConfirm[5]){
                      setState(() {
                        if (isCheckConfirm[4]  || isCheckConfirm[3]){
                          isCheckConfirm[4] = false;
                        }else{
                          isCheckConfirm[3] = true;
                        }
                        isChecked[4] = true;
                      });
                    }
                  },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                ),ArrowElement(
                  show: isChecked[5],
                  id: 'p5',
                  targetId: isChecked[5] ? ((!isCheckConfirm[4]) ? 'p4' : (isCheckConfirm[5] ? 'p6' : null)) : null ,
                  sourceAnchor: isChecked[5] ? ((!isCheckConfirm[4]) ? Alignment.topCenter : Alignment.bottomCenter) : Alignment.bottomCenter ,
                  targetAnchor: isChecked[5] ? ((!isCheckConfirm[4]) ? Alignment.bottomCenter : Alignment.topCenter) : Alignment.topCenter,
                  color: Colors.green,
                  child: RaisedButton(child: Text("Phòng BCD",textAlign: TextAlign.center,),color: Colors.green, onPressed: () {
                    if (isCheckConfirm[3]){
                      setState(() {
                        if (isCheckConfirm[5] || isCheckConfirm[4]){
                          isCheckConfirm[5] = false;
                        }else{
                          isCheckConfirm[4] = true;
                        }
                        isChecked[5] = true;
                      });
                    }
                  },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                ),
                ArrowElement(
                  id: 'p6',
                  targetId: isChecked[6] ? ((!isCheckConfirm[5]) ? 'p5' : null) : null ,
                  sourceAnchor: isChecked[6] ? ((!isCheckConfirm[5]) ? Alignment.topCenter : Alignment.bottomCenter) : Alignment.bottomCenter,
                  targetAnchor: isChecked[6] ? ((!isCheckConfirm[5]) ? Alignment.bottomCenter : Alignment.topCenter) : Alignment.topCenter,
                  color: Colors.red,
                  child: RaisedButton(child: Text("Ban giám đốc",textAlign: TextAlign.center,),color: Colors.red, onPressed: () {
                    if (!isCheckConfirm[5] && isCheckConfirm[4]){
                      setState(() {
                        isCheckConfirm[5] = true;
                        isChecked[6] = true;
                      });
                    }
                  },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                )
              ],
            ),
          ),margin: EdgeInsets.all(10),),
        ),
      );

  Widget _itemList(List<String>  title,List<bool> arrConfirm,List<bool> arrCheck,int index) {
    return ArrowElement(
      show: arrCheck[index],
      id: 'p$index',
      targetId: arrCheck[index] ? ((!arrConfirm[index - 1]) ? 'p${index - 1}' : (arrConfirm[1] ? 'p${index + 1}' : null)) : null,
      sourceAnchor: arrCheck[index] ? ((!arrConfirm[index - 1]) ? Alignment.topCenter : Alignment.bottomCenter) : Alignment.bottomCenter,
      targetAnchor: arrCheck[index] ? ((!arrConfirm[index - 1]) ? Alignment.bottomCenter : Alignment.topCenter) : Alignment.topCenter,
      color: Colors.yellow,
      child: RaisedButton(child: Text(title[index],textAlign: TextAlign.center,),color: Colors.yellow, onPressed: () {
        if (index == 0 ){
          if(arrCheck[1] && !arrConfirm[1]){
            setState(() {
              arrConfirm[0] = false;
            });
          }
        }else if (index == 1){
          setState(() {
            if (arrConfirm[1] && !arrConfirm[2]){
              arrConfirm[1] = false;
            }else{
              arrConfirm[0] = true;
            }
            arrCheck[1] = true;
          });
        }else if (index == arrCheck.length){
          if (!arrConfirm[index] && arrConfirm[index-1]){
            setState(() {
              arrConfirm[index] = true;
              arrCheck[index+1] = true;
            });
          }
        }else{
          if (arrConfirm[index-2] && !arrConfirm[index + 1]){
            setState(() {
              if (arrConfirm[index]  || arrConfirm[index-1]){
                arrConfirm[index] = false;
              }else{
                arrConfirm[index-1] = true;
              }
              arrCheck[index] = true;
            });
          }
        }
      },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}

