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

  var arrConfirm = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false];
  var arrShows = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false];
  TextStyle _style(Color color) => TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: color);

  @override
  Widget build(BuildContext context) => ArrowContainer(
        child: Scaffold(
          body: Container(
            margin: EdgeInsets.all(10),
            child: Column(children: [
              Expanded(child: Center(
                child: ArrowElement(
                  id: 'add',
                  targetId: arrConfirm[0] ? 'am1' : null,
                  sourceAnchor: Alignment.bottomCenter,
                  targetAnchor: Alignment.centerRight,
                  color: Colors.orange,
                  child: IconButton(onPressed: (){
                    if(arrConfirm[0] && !arrConfirm[1]){
                      setState(() {
                        arrConfirm[0] = false;
                      });
                    }
                  }, icon: Icon(Icons.add_box,size: 50,)),
                ),
              )),
              Expanded(child: Container(
                margin: EdgeInsets.only(left: 75),
                child: Row(children: [
                  ArrowElement(
                    show: arrShows[1],
                    id: 'am1',
                    targetId: arrShows[1] ? (!arrConfirm[0] ? 'add' : arrConfirm[1] ? 'bid1' : null) : null,
                    sourceAnchor: arrShows[1] ? (!arrConfirm[0] ? Alignment.centerRight : Alignment.bottomCenter) : Alignment.bottomCenter  ,
                    targetAnchor: arrShows[1] ? (!arrConfirm[0] ? Alignment.bottomCenter : Alignment.topCenter) : Alignment.topCenter,
                    color: Colors.orange,
                    child: TextButton(child: Text("AM",style: _style(Colors.red)),onPressed: (){
                      setState(() {
                        if (arrConfirm[1] && !arrConfirm[2]){
                          arrConfirm[1] = false;
                        }else{
                          arrConfirm[0] = true;
                        }
                        arrShows[1] = true;
                      });
                    },),
                  ),
                  SizedBox(width: 50,),
                  ArrowElement(
                    show: arrShows[3],
                    id: 'af1',
                    targetId: arrShows[3] ? (!arrConfirm[2] ? 'bid1' : (arrConfirm[6] ? 'bidm' : null)) : null,
                    sourceAnchor: arrShows[3] ? (!arrConfirm[2] ? Alignment.centerLeft : (arrConfirm[6] ? Alignment.centerRight : Alignment.centerLeft)) : Alignment.centerLeft ,
                    targetAnchor: arrShows[3] ? (!arrConfirm[2] ? Alignment.centerRight : (arrConfirm[6] ? Alignment.centerLeft : Alignment.centerRight)) : Alignment.centerRight,
                    color: Colors.orange,
                    child: TextButton(child: Text("AF",textAlign: TextAlign.center,style: _style(Colors.red)),onPressed: (){
                      if (arrConfirm[1]){
                        setState(() {
                          if (arrConfirm[2]  && arrConfirm[6]){
                            arrConfirm[6] = false;
                          }else{
                            arrConfirm[2] = true;
                          }
                          arrShows[3] = true;
                        });
                      }
                    },),
                  )
                ],),
              )),
              Expanded(child: Row(children: [
                ArrowElement(
                  show: arrShows[2],
                  id: 'bid1',
                  targetIds: arrShows[2] ? (!arrConfirm[1] ? ['am1'] : _getTarget([2,3,4,5],['af1','imple','legal','user'])) : null,
                  sourceAnchor: arrShows[2] ? (!arrConfirm[1] ? Alignment.topCenter : Alignment.centerRight) : Alignment.bottomCenter,
                  targetAnchor: arrShows[2] ? (!arrConfirm[1] ? Alignment.bottomCenter : Alignment.centerLeft) : Alignment.centerLeft,
                  color: Colors.orange,
                  child: TextButton(child: Text("BID",textAlign: TextAlign.center,style: _style(Colors.red)),onPressed: (){
                    if((arrConfirm[2] || arrConfirm[3] || arrConfirm[4] || arrConfirm[5]) && !arrConfirm[6] && !arrConfirm[7] && !arrConfirm[8]){
                      setState(() {
                        arrShows[3] = true;
                        arrShows[4] = true;
                        arrShows[6] = true;
                        arrShows[7] = true;
                        arrConfirm[2] = false;
                        arrConfirm[3] = false;
                        arrConfirm[4] = false;
                        arrConfirm[5] = false;
                      });
                    }else{
                      setState(() {
                        if (arrConfirm[1] && !arrConfirm[2]){
                          arrConfirm[2] = false;
                        }else{
                          arrConfirm[1] = true;
                        }
                        arrShows[2] = true;
                      });
                    }
                  },),
                ),
                SizedBox(width: 50,),
                ArrowElement(
                  show: arrShows[4],
                  id: 'imple',
                  targetId: arrShows[4] ? (!arrConfirm[3] ? 'bid1' : (arrConfirm[7] ? 'bidm' : null)) : null,
                  sourceAnchor: arrShows[4] ? (!arrConfirm[3] ? Alignment.centerLeft : (arrConfirm[7] ? Alignment.centerRight : Alignment.centerLeft)) : Alignment.centerLeft ,
                  targetAnchor: arrShows[4] ? (!arrConfirm[3] ? Alignment.centerRight : (arrConfirm[7] ? Alignment.centerLeft : Alignment.centerRight)) : Alignment.centerRight,
                  color: Colors.orange,
                  child: TextButton(child: Text("IMPLE",textAlign: TextAlign.center,style: _style(Colors.black)),onPressed: (){
                    if (arrConfirm[1]){
                      setState(() {
                        if (arrConfirm[3]  && arrConfirm[7]){
                          arrConfirm[7] = false;
                        }else{
                          arrConfirm[3] = true;
                        }
                        arrShows[4] = true;
                      });
                    }
                  },),
                ),
                SizedBox(width: 115,),
                ArrowElement(
                  show: arrShows[5],
                  id: 'bidm',
                  targetIds: arrShows[5] ? _getTargetConvert([6,7,8], ['af1','imple','legal']) : null,
                  sourceAnchor: arrShows[5] ? ((!arrConfirm[6] || !arrConfirm[7] || !arrConfirm[8]) ? Alignment.centerLeft : Alignment.bottomCenter) : Alignment.bottomCenter ,
                  targetAnchor: arrShows[5] ? ((!arrConfirm[6] || !arrConfirm[7] || !arrConfirm[8]) ? Alignment.centerRight : Alignment.topCenter) : Alignment.topCenter,
                  color: Colors.orange,
                  child: TextButton(child: Text("BIDM",textAlign: TextAlign.center,style: _style(Colors.red)),onPressed: (){
                      setState(() {
                        if (arrConfirm[2]){
                          arrConfirm[6] = true;
                        }
                        if (arrConfirm[3]){
                          print("vaoday ");
                          arrConfirm[7] = true;
                        }
                        if (arrConfirm[4]){
                          print("vaoday 1111");
                          arrConfirm[8] = true;
                        }
                        arrShows[5] = true;
                      });
                  },),
                )
              ],mainAxisAlignment: MainAxisAlignment.end,)),
              Expanded(child: Center(
                child: ArrowElement(
                  show: arrShows[6],
                  id: 'legal',
                  targetId: arrShows[6] ? (!arrConfirm[4] ? 'bid1' : (arrConfirm[8] ? 'bidm' : null)) : null,
                  sourceAnchor: arrShows[6] ? (!arrConfirm[4] ? Alignment.centerLeft : (arrConfirm[8] ? Alignment.centerRight : Alignment.centerLeft)) : Alignment.centerLeft ,
                  targetAnchor: arrShows[6] ? (!arrConfirm[4] ? Alignment.centerRight : (arrConfirm[8] ? Alignment.centerLeft : Alignment.centerRight)) : Alignment.centerRight,
                  color: Colors.orange,
                  child: TextButton(child: Text("LEGAL",textAlign: TextAlign.center,style: _style(Colors.green)),onPressed: (){
                    if (arrConfirm[1]){
                      setState(() {
                        if (arrConfirm[4]  && arrConfirm[8]){
                          arrConfirm[8] = false;
                        }else{
                          arrConfirm[4] = true;
                        }
                        arrShows[6] = true;
                      });
                    }
                  },),
                ),
              )),
              Expanded(child: Align(alignment: Alignment.centerRight,child: ArrowElement(
                show: arrShows[8],
                id: 'am2',
                targetId: 'af2',
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.topCenter,
                color: Colors.orange,
                child: GestureDetector(child: Text("AM",textAlign: TextAlign.center,style: _style(Colors.green))),
              ))),
              Expanded(child: Row(children: [
                ArrowElement(
                  show: arrShows[7],
                  id: 'user',
                  targetId: '',
                  // targetIds: ['bid2','s1','s2','pro1','pro2','sol1','sol2','prod'],
                  sourceAnchor: Alignment.bottomCenter,
                  targetAnchor: Alignment.topCenter,
                  color: Colors.orange,
                  child: IconButton(onPressed: (){
                    if (arrConfirm[1]){
                      setState(() {
                        arrConfirm[5] = true;
                        arrShows[7] = true;
                      });
                    }
                  }, icon: Icon(Icons.account_circle_outlined,size: 40,)),
                ),
                SizedBox(width: 60,),
                ArrowElement(
                  show: arrShows[9],
                  id: 'bid2',
                  targetId: 'finish',
                  sourceAnchor: Alignment.bottomCenter,
                  targetAnchor: Alignment.topCenter,
                  color: Colors.orange,
                  child: GestureDetector(child: Text("BID",textAlign: TextAlign.center,style: _style(Colors.red))),
                ),
                SizedBox(width: 50,),
                ArrowElement(
                  show: arrShows[10],
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
                  show: arrShows[11],
                  id: 's1',
                  targetId: 'bid3',
                  sourceAnchor: Alignment.bottomCenter,
                  targetAnchor: Alignment.topCenter,
                  color: Colors.orange,
                  child: GestureDetector(child: Text("S",textAlign: TextAlign.center,style: _style(Colors.black))),
                ),
                SizedBox(width: 40,),
                ArrowElement(
                  show: arrShows[12],
                  id: 's2',
                  targetId: 'bid3',
                  sourceAnchor: Alignment.bottomCenter,
                  targetAnchor: Alignment.topCenter,
                  color: Colors.orange,
                  child: GestureDetector(child: Text("S",textAlign: TextAlign.center,style: _style(Colors.black))),
                ),
                SizedBox(width: 50,),
                ArrowElement(
                  show: arrShows[13],
                  id: 'pro1',
                  targetId: 'bid3',
                  sourceAnchor: Alignment.bottomCenter,
                  targetAnchor: Alignment.topCenter,
                  color: Colors.orange,
                  child: GestureDetector(child: Text("PRO",textAlign: TextAlign.center,style: _style(Colors.orange))),
                ),SizedBox(width: 10,),
                ArrowElement(
                  show: arrShows[14],
                  id: 'pro2',
                  targetId: 'bid3',
                  sourceAnchor: Alignment.bottomCenter,
                  targetAnchor: Alignment.topCenter,
                  color: Colors.orange,
                  child: GestureDetector(child: Text("PRO",textAlign: TextAlign.center,style: _style(Colors.orange))),
                )
              ],mainAxisAlignment: MainAxisAlignment.start,)),
              Expanded(child: Align(alignment: Alignment.centerLeft,child: ArrowElement(
                show: arrShows[15],
                id: 'sol1',
                targetId: 'bid3',
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.centerLeft,
                color: Colors.orange,
                child: GestureDetector(child: Text("SOL",textAlign: TextAlign.center,style: _style(Colors.blue))),
              ))),
              Expanded(child: Align(alignment: Alignment.centerLeft,child: ArrowElement(
                show: arrShows[16],
                id: 'sol2',
                targetId: 'bid3',
                sourceAnchor: Alignment.bottomCenter,
                targetAnchor: Alignment.centerLeft,
                color: Colors.orange,
                child: GestureDetector(child: Text("SOL",textAlign: TextAlign.center,style: _style(Colors.blue))),
              ))),
              Expanded(child: Row(children: [
                ArrowElement(
                  show: arrShows[17],
                  id: 'prod',
                  targetId: 'bid3',
                  sourceAnchor: Alignment.centerRight,
                  targetAnchor: Alignment.centerLeft,
                  color: Colors.orange,
                  child: GestureDetector(child: Text("PROD",textAlign: TextAlign.center,style: _style(Colors.red))),
                ),
                SizedBox(width: 50,),
                ArrowElement(
                  show: arrShows[18],
                  id: 'bid3',
                  targetId: 'finish',
                  sourceAnchor: Alignment.centerRight,
                  targetAnchor: Alignment.centerLeft,
                  color: Colors.orange,
                  child: GestureDetector(child: Text("BID",textAlign: TextAlign.center,style: _style(Colors.red))),
                ),
                SizedBox(width: 50,),
                ArrowElement(
                  show: arrShows[19],
                  id: 'finish',
                  targetId: null,
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

  List<String> _getTarget(List<int> listTree,List<String> listId){
    List<String> targets = [];
    for (var item in listTree){
      if (arrConfirm[item]){
        targets.add('${listId[item-2]}');
      }else{
        targets.remove('${listId[item-2]}');
      }
    }
    print("target kaka : $targets");
    return targets;
  }

  List<String> _getTargetConvert(List<int> listTree,List<String> listId){
    List<String> targets = [];
    for (var item in listTree){
      if (!arrConfirm[item]){
        targets.add('${listId[item-6]}');
      }else{
        targets.remove('${listId[item-6]}');
      }
    }
    if (!arrShows[3]){
      targets.remove('${listId[0]}');
    }
    if (!arrShows[4]){
      targets.remove('${listId[1]}');
    }
    if (!arrShows[6]){
      targets.remove('${listId[2]}');
    }
    print("target kaka : $targets");
    return targets;
  }
}

