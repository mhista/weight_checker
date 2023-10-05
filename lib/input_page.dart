import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('BMI Calculator'),
      ),
      body: Column(
        children:[
          Expanded(
            Container(
              height:200,
              width:170,
              margin:EdgeInsets.all(15.0),
              decoration:BoxDecoration(
                color:Color(0xFF1D1E33),
                borderRadius:BorderRadius.Circular(10.0),
              )
            )
          ),
        ]
      ),
    );
  }
}
