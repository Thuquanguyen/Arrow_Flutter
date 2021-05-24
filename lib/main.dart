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
  int seleted = 0;
  var listTitle = ["Phòng CNTT","Phòng kế toán","Phòng kế hoạch","Phòng ABC","Phòng BCD","Phòng CDE","Ban giám đốc"];
  TextStyle _style(Color color) => TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: color);
  var k = UniqueKey();

  @override
  Widget build(BuildContext context) => ArrowContainer(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Arrows everywhere'),
          ),
          body: Container(
            margin: EdgeInsets.all(10),
            child: Column(children: [
              Expanded(child: Center(
                child: ArrowElement(
                  show: false,
                  id: 'add',
                  targetId: 'am1',
                  sourceAnchor: Alignment.bottomCenter,
                  targetAnchor: Alignment.centerRight,
                  color: Colors.orange,
                  child: IconButton(onPressed: null, icon: Icon(Icons.add_box,size: 50,)),
                ),
              )),
              Expanded(child: Container(
                margin: EdgeInsets.only(left: 75),
                child: Row(children: [
                  ArrowElement(
                    show: false,
                    id: 'am1',
                    targetId: 'bid1',
                    sourceAnchor: Alignment.bottomCenter,
                    targetAnchor: Alignment.topCenter,
                    color: Colors.orange,
                    child: GestureDetector(child: Text("AM",textAlign: TextAlign.center,style: _style(Colors.red))),
                  ),
                  SizedBox(width: 50,),
                  ArrowElement(
                    show: false,
                    id: 'af1',
                    targetId: 'bidm',
                    sourceAnchor: Alignment.centerRight,
                    targetAnchor: Alignment.centerLeft,
                    color: Colors.orange,
                    child: GestureDetector(child: Text("AF",textAlign: TextAlign.center,style: _style(Colors.red))),
                  )
                ],),
              )),
              Expanded(child: Row(children: [
                ArrowElement(
                  show: false,
                  id: 'bid1',
                  targetIds: ['af1','imple','legal','user'],
                  sourceAnchor: Alignment.centerRight,
                  targetAnchor: Alignment.centerLeft,
                  color: Colors.orange,
                  child: GestureDetector(child: Text("BID",textAlign: TextAlign.center,style: _style(Colors.red))),
                ),
                SizedBox(width: 50,),
                ArrowElement(
                  show: false,
                  id: 'imple',
                  targetId: 'bidm',
                  sourceAnchor: Alignment.centerRight,
                  targetAnchor: Alignment.centerLeft,
                  color: Colors.orange,
                  child: GestureDetector(child: Text("IMPLE",textAlign: TextAlign.center,style: _style(Colors.black))),
                ),
                SizedBox(width: 115,),
                ArrowElement(
                  show: false,
                  id: 'bidm',
                  targetId: 'am2',
                  sourceAnchor: Alignment.bottomCenter,
                  targetAnchor: Alignment.topCenter,
                  color: Colors.orange,
                  child: GestureDetector(child: Text("BIDM",textAlign: TextAlign.center,style: _style(Colors.red))),
                )
              ],mainAxisAlignment: MainAxisAlignment.end,)),
              Expanded(child: Center(
                child: ArrowElement(
                  show: false,
                  id: 'legal',
                  targetId: 'bidm',
                  sourceAnchor: Alignment.centerRight,
                  targetAnchor: Alignment.centerLeft,
                  color: Colors.orange,
                  child: GestureDetector(child: Text("LEGAL",textAlign: TextAlign.center,style: _style(Colors.green))),
                ),
              )),
              Expanded(child: Align(alignment: Alignment.centerRight,child: ArrowElement(
                show: false,
                id: 'am2',
                targetId: 'af2',
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.topCenter,
                color: Colors.orange,
                child: GestureDetector(child: Text("AM",textAlign: TextAlign.center,style: _style(Colors.green))),
              ))),
              Expanded(child: Row(children: [
                ArrowElement(
                  show: false,
                  id: 'user',
                  targetIds: ['bid2','s1','s2','pro1','pro2','sol1','sol2','prod'],
                  sourceAnchor: Alignment.bottomCenter,
                  targetAnchor: Alignment.topCenter,
                  color: Colors.orange,
                  child: IconButton(onPressed: null, icon: Icon(Icons.account_circle_outlined,size: 40,)),
                ),
                SizedBox(width: 60,),
                ArrowElement(
                  show: false,
                  id: 'bid2',
                  targetId: 'finish',
                  sourceAnchor: Alignment.bottomCenter,
                  targetAnchor: Alignment.topCenter,
                  color: Colors.orange,
                  child: GestureDetector(child: Text("BID",textAlign: TextAlign.center,style: _style(Colors.red))),
                ),
                SizedBox(width: 50,),
                ArrowElement(
                  show: false,
                  id: 'af2',
                  targetId: 'finish',
                  sourceAnchor: Alignment.bottomCenter,
                  targetAnchor: Alignment.topCenter,
                  color: Colors.orange,
                  child: GestureDetector(child: Text("AF",textAlign: TextAlign.center,style: _style(Colors.red))),
                )
              ],mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.center,)),
              Expanded(child: Row(children: [
                ArrowElement(
                  show: false,
                  id: 's1',
                  targetId: 'bid3',
                  sourceAnchor: Alignment.bottomCenter,
                  targetAnchor: Alignment.topCenter,
                  color: Colors.orange,
                  child: GestureDetector(child: Text("S",textAlign: TextAlign.center,style: _style(Colors.black))),
                ),
                SizedBox(width: 40,),
                ArrowElement(
                  show: false,
                  id: 's2',
                  targetId: 'bid3',
                  sourceAnchor: Alignment.bottomCenter,
                  targetAnchor: Alignment.topCenter,
                  color: Colors.orange,
                  child: GestureDetector(child: Text("S",textAlign: TextAlign.center,style: _style(Colors.black))),
                ),
                SizedBox(width: 50,),
                ArrowElement(
                  show: false,
                  id: 'pro1',
                  targetId: 'bid3',
                  sourceAnchor: Alignment.bottomCenter,
                  targetAnchor: Alignment.topCenter,
                  color: Colors.orange,
                  child: GestureDetector(child: Text("PRO",textAlign: TextAlign.center,style: _style(Colors.orange))),
                ),SizedBox(width: 10,),
                ArrowElement(
                  show: false,
                  id: 'pro2',
                  targetId: 'bid3',
                  sourceAnchor: Alignment.bottomCenter,
                  targetAnchor: Alignment.topCenter,
                  color: Colors.orange,
                  child: GestureDetector(child: Text("PRO",textAlign: TextAlign.center,style: _style(Colors.orange))),
                )
              ],mainAxisAlignment: MainAxisAlignment.start,)),
              Expanded(child: Align(alignment: Alignment.centerLeft,child: ArrowElement(
                show: false,
                id: 'sol1',
                targetId: 'bid3',
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.centerLeft,
                color: Colors.orange,
                child: GestureDetector(child: Text("SOL",textAlign: TextAlign.center,style: _style(Colors.blue))),
              ))),
              Expanded(child: Align(alignment: Alignment.centerLeft,child: ArrowElement(
                show: false,
                id: 'sol2',
                targetId: 'bid3',
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.centerLeft,
                color: Colors.orange,
                child: GestureDetector(child: Text("SOL",textAlign: TextAlign.center,style: _style(Colors.blue))),
              ))),
              Expanded(child: Row(children: [
                ArrowElement(
                  show: false,
                  id: 'prod',
                  targetId: 'bid3',
                  sourceAnchor: Alignment.centerRight,
                  targetAnchor: Alignment.centerLeft,
                  color: Colors.orange,
                  child: GestureDetector(child: Text("PROD",textAlign: TextAlign.center,style: _style(Colors.red))),
                ),
                SizedBox(width: 50,),
                ArrowElement(
                  show: false,
                  id: 'bid3',
                  targetId: 'finish',
                  sourceAnchor: Alignment.centerRight,
                  targetAnchor: Alignment.centerLeft,
                  color: Colors.orange,
                  child: GestureDetector(child: Text("BID",textAlign: TextAlign.center,style: _style(Colors.red))),
                ),
                SizedBox(width: 50,),
                ArrowElement(
                  show: false,
                  id: 'finish',
                  targetId: isCheckConfirm[0] ? 'p1' : null,
                  sourceAnchor: Alignment.bottomCenter,
                  targetAnchor: Alignment.topCenter,
                  color: Colors.orange,
                  child: IconButton(onPressed: null, icon: Icon(Icons.assistant_photo_sharp,size: 50,)),
                )
              ],mainAxisAlignment: MainAxisAlignment.spaceBetween,)),
            ],mainAxisAlignment: MainAxisAlignment.center),
          ),
        ),
      );


}

