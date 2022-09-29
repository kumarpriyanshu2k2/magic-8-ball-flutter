import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Magic 8 Ball"),
          ),
          body: BallPage(),
        )
      ),
);
class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int bn =1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
               child:TextButton(
                    onPressed: (){
                      setState((){
                        bn=Random().nextInt(5)+1;
                      });

                    },
                   child: Image.asset("images/ball$bn.png")))

        ],
      ),
    );
  }
}
