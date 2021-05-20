import 'package:example/widget_arrows.dart';
import 'package:flutter/material.dart';

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
  var arrString = [true,false,true];

  

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
                Align(
                  alignment: Alignment.center,
                  child: Stack(children: [
                    ArrowElement(
                      show: showArrows,
                      id: 'text',
                      targetId: null,
                      sourceAnchor: Alignment.bottomCenter,
                      targetAnchor: Alignment.topCenter,
                      color: Colors.black,
                      child: RaisedButton(child: Text(""),color: Colors.purple, onPressed: () {

                      },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    ),ArrowElement(
                      show: showArrows,
                      id: 'text0',
                      targetId: 'text3',
                      sourceAnchor: Alignment.bottomCenter,
                      targetAnchor: Alignment.topCenter,
                      color: Colors.grey,
                      child: RaisedButton(child: Text(""),color: Colors.purple, onPressed: () {

                      },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    ),ArrowElement(
                      show: showArrows,
                      id: 'text00',
                      targetId: 'text4',
                      sourceAnchor: Alignment.bottomCenter,
                      targetAnchor: Alignment.topCenter,
                      color: Colors.green,
                      child: RaisedButton(child: Text("CNTT",textAlign: TextAlign.center,),color: Colors.purple, onPressed: () {

                      },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    )
                  ],),
                ),
                Row(children: [
                  Expanded(child: ArrowElement(
                    id: 'text2',
                    targetIds: ['text'],
                    sourceAnchor: Alignment.topCenter,
                    targetAnchor: Alignment.bottomCenter,
                    color: Colors.blue,
                    child: RaisedButton(child: Text("Phòng kế toán",textAlign: TextAlign.center,),color: Colors.yellow, onPressed: () {

                    },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  )),
                  SizedBox(width: 10),
                  Expanded(child: ArrowElement(
                    show: showArrows,
                    id: 'text3',
                    targetId: 'acc',
                    sourceAnchor: Alignment.bottomCenter,
                    color: Colors.yellow,
                    child: RaisedButton(child: Text("Phòng kế hoạch",textAlign: TextAlign.center,),color: Colors.yellow, onPressed: () {

                    },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  )),
                  SizedBox(width: 10),Expanded(child: ArrowElement(
                    show: showArrows,
                    id: 'text4',
                    targetId: 'acc',
                    color: Colors.green,
                    sourceAnchor: Alignment.bottomCenter,
                    child: RaisedButton(child: Text("Phòng hành chính",textAlign: TextAlign.center,),color: Colors.yellow, onPressed: () {

                    },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  ))
                ],),
                Align(
                  alignment: Alignment.center,
                  child: ArrowElement(
                    show: showArrows,
                    id: 'acc',
                    targetIds: null,
                    sourceAnchor: Alignment.topCenter,
                    color: Colors.grey,
                    child: RaisedButton(child: Text("Ban giám đốc",textAlign: TextAlign.center,),color: Colors.green, onPressed: () {

                    },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  ),
                )
              ],
            ),
          ),margin: EdgeInsets.all(10),),
        ),
      );
}
