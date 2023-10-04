import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      home:Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.red,
        title:Text('Xylo App')
      ),
      body:XyloApp(),
        backgroundColor:Colors.red,
      ),
    ),
  );
}
class XyloApp extends StatelessWidget {
  const XyloApp({super.key});
  Expanded buildContext({required Color color, required int noteNumber})=>Expanded(
    child: TextButton(
      style: ButtonStyle(
        backgroundColor:MaterialStatePropertyAll(color),
      ),
      onPressed:(){
        final player= AudioPlayer();
        player.play(AssetSource('note$noteNumber.wav'),);
      }, child: Text('click me'),),
  );


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContext(color:Colors.red,noteNumber:1),
        buildContext(color:Colors.blue,noteNumber:2),
        buildContext(color:Colors.orange,noteNumber:3),
        buildContext(color:Colors.indigo,noteNumber:4),
        buildContext(color:Colors.purple,noteNumber:5),
        buildContext(color:Colors.green,noteNumber:6),
      ],
    );
  }
}

