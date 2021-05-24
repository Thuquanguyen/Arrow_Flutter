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

  @override
  Widget build(BuildContext context) => ArrowContainer(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Arrows everywhere'),
          ),
          body: Column(children: [
            Expanded(child: ArrowElement(
              id: 'p0',
              targetId: isCheckConfirm[0] ? 'p1' : null,
              sourceAnchor: Alignment.bottomCenter,
              targetAnchor: Alignment.topCenter,
              color: Colors.purple,
              child: IconButton(onPressed: null, icon: Icon(Icons.add_box,size: 50,)),
            )),
            Expanded(child: Row(children: [
              ArrowElement(
                id: 'p0',
                targetId: isCheckConfirm[0] ? 'p1' : null,
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.topCenter,
                color: Colors.purple,
                child: GestureDetector(child: Text("AM",textAlign: TextAlign.center,style: _style(Colors.red))),
              ),
              SizedBox(width: 50,),
              ArrowElement(
                id: 'p0',
                targetId: isCheckConfirm[0] ? 'p1' : null,
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.topCenter,
                color: Colors.purple,
                child: GestureDetector(child: Text("AF",textAlign: TextAlign.center,style: _style(Colors.red))),
              )
            ],)),
            Expanded(child: Row(children: [
              ArrowElement(
                id: 'p0',
                targetId: isCheckConfirm[0] ? 'p1' : null,
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.topCenter,
                color: Colors.purple,
                child: GestureDetector(child: Text("BID",textAlign: TextAlign.center,style: _style(Colors.red))),
              ),
              SizedBox(width: 50,),
              ArrowElement(
                id: 'p0',
                targetId: isCheckConfirm[0] ? 'p1' : null,
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.topCenter,
                color: Colors.purple,
                child: GestureDetector(child: Text("IMPLE",textAlign: TextAlign.center,style: _style(Colors.black))),
              ),
              SizedBox(width: 50,),
              ArrowElement(
                id: 'p0',
                targetId: isCheckConfirm[0] ? 'p1' : null,
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.topCenter,
                color: Colors.purple,
                child: GestureDetector(child: Text("BIDM",textAlign: TextAlign.center,style: _style(Colors.red))),
              )
            ],)),
            Expanded(child: Center(child: ArrowElement(
              id: 'p0',
              targetId: isCheckConfirm[0] ? 'p1' : null,
              sourceAnchor: Alignment.bottomCenter,
              targetAnchor: Alignment.topCenter,
              color: Colors.purple,
              child: GestureDetector(child: Text("LEGAL",textAlign: TextAlign.center,style: _style(Colors.green))),
            ))),
            Expanded(child: Align(alignment: Alignment.centerRight,child: ArrowElement(
              id: 'p0',
              targetId: isCheckConfirm[0] ? 'p1' : null,
              sourceAnchor: Alignment.bottomCenter,
              targetAnchor: Alignment.topCenter,
              color: Colors.purple,
              child: GestureDetector(child: Text("AM",textAlign: TextAlign.center,style: _style(Colors.green))),
            ))),
            Expanded(child: Row(children: [
              ArrowElement(
                id: 'p0',
                targetId: isCheckConfirm[0] ? 'p1' : null,
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.topCenter,
                color: Colors.purple,
                child: IconButton(onPressed: null, icon: Icon(Icons.android_outlined,size: 30,)),
              ),
              SizedBox(width: 50,),
              ArrowElement(
                id: 'p0',
                targetId: isCheckConfirm[0] ? 'p1' : null,
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.topCenter,
                color: Colors.purple,
                child: GestureDetector(child: Text("BID",textAlign: TextAlign.center,style: _style(Colors.black))),
              ),
              SizedBox(width: 50,),
              ArrowElement(
                id: 'p0',
                targetId: isCheckConfirm[0] ? 'p1' : null,
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.topCenter,
                color: Colors.purple,
                child: GestureDetector(child: Text("AF",textAlign: TextAlign.center,style: _style(Colors.red))),
              )
            ],)),
            Expanded(child: Row(children: [
              ArrowElement(
                id: 'p0',
                targetId: isCheckConfirm[0] ? 'p1' : null,
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.topCenter,
                color: Colors.purple,
                child: GestureDetector(child: Text("S",textAlign: TextAlign.center,style: _style(Colors.blue))),
              ),
              SizedBox(width: 20,),
              ArrowElement(
                id: 'p0',
                targetId: isCheckConfirm[0] ? 'p1' : null,
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.topCenter,
                color: Colors.purple,
                child: GestureDetector(child: Text("S",textAlign: TextAlign.center,style: _style(Colors.blue))),
              ),
              SizedBox(width: 20,),
              ArrowElement(
                id: 'p0',
                targetId: isCheckConfirm[0] ? 'p1' : null,
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.topCenter,
                color: Colors.purple,
                child: GestureDetector(child: Text("PROPOSAL",textAlign: TextAlign.center,style: _style(Colors.orange))),
              ),SizedBox(width: 20,),
              ArrowElement(
                id: 'p0',
                targetId: isCheckConfirm[0] ? 'p1' : null,
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.topCenter,
                color: Colors.purple,
                child: GestureDetector(child: Text("PROPOSAL",textAlign: TextAlign.center,style: _style(Colors.orange))),
              )
            ],mainAxisAlignment: MainAxisAlignment.spaceEvenly,)),
            Expanded(child: Align(alignment: Alignment.centerLeft,child: ArrowElement(
              id: 'p0',
              targetId: isCheckConfirm[0] ? 'p1' : null,
              sourceAnchor: Alignment.bottomCenter,
              targetAnchor: Alignment.topCenter,
              color: Colors.purple,
              child: GestureDetector(child: Text("S",textAlign: TextAlign.center,style: _style(Colors.blue))),
            ))),
            Expanded(child: Align(alignment: Alignment.centerLeft,child: ArrowElement(
              id: 'p0',
              targetId: isCheckConfirm[0] ? 'p1' : null,
              sourceAnchor: Alignment.bottomCenter,
              targetAnchor: Alignment.topCenter,
              color: Colors.purple,
              child: GestureDetector(child: Text("S",textAlign: TextAlign.center,style: _style(Colors.blue))),
            ))),
            Expanded(child: Row(children: [
              ArrowElement(
                id: 'p0',
                targetId: isCheckConfirm[0] ? 'p1' : null,
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.topCenter,
                color: Colors.purple,
                child: GestureDetector(child: Text("PROD",textAlign: TextAlign.center,style: _style(Colors.red))),
              ),
              SizedBox(width: 50,),
              ArrowElement(
                id: 'p0',
                targetId: isCheckConfirm[0] ? 'p1' : null,
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.topCenter,
                color: Colors.purple,
                child: GestureDetector(child: Text("BID",textAlign: TextAlign.center,style: _style(Colors.red))),
              ),
              SizedBox(width: 50,),
              ArrowElement(
                id: 'p0',
                targetId: isCheckConfirm[0] ? 'p1' : null,
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.topCenter,
                color: Colors.purple,
                child: IconButton(onPressed: null, icon: Icon(Icons.assistant_photo_sharp,size: 50,)),
              )
            ],mainAxisAlignment: MainAxisAlignment.spaceEvenly,)),
          ],mainAxisAlignment: MainAxisAlignment.center),
        ),
      );


}

