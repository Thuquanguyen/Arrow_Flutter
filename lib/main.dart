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
                _itemList(2),
                _itemList(3),
                _itemList(4),
                _itemList(5),
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

  Widget _itemList(int index) => ArrowElement(
    show: isChecked[index],
    id: 'p$index',
    targetId: isChecked[index] ? ((!isCheckConfirm[index - 1]) ? 'p${index - 1}' : (isCheckConfirm[index] ? 'p${index + 1}' : null)) : null,
    sourceAnchor: isChecked[index] ? ((!isCheckConfirm[index - 1]) ? Alignment.topCenter : Alignment.bottomCenter) : Alignment.bottomCenter,
    targetAnchor: isChecked[index] ? ((!isCheckConfirm[index - 1]) ? Alignment.bottomCenter : Alignment.topCenter) : Alignment.topCenter,
    color: Colors.yellow,
    child: RaisedButton(child: Text(listTitle[index],textAlign: TextAlign.center,),color: Colors.yellow, onPressed: () {
      print("indexxx : $index");
      if ((index >= isCheckConfirm.length - 1) ? (isCheckConfirm[index-2]) : (isCheckConfirm[index-2] && !isCheckConfirm[index + 1])){
        setState(() {
          if (isCheckConfirm[index]  || isCheckConfirm[index-1]){
            isCheckConfirm[index] = false;
          }else{
            isCheckConfirm[index-1] = true;
          }
          isChecked[index] = true;
        });
      }
    },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
  );
}

