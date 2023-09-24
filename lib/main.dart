
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random =Random();
  int x =0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lottery App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Center(child: Text('Lottery winning number is 4'),),
            SizedBox(height: 17,),
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  color: x==4 ? Colors.teal : Colors.grey,borderRadius: BorderRadius.circular(10.0)
              ),
              child: Padding(
                padding:  EdgeInsets.all(10),
                child: x==4?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done,color:Colors.greenAccent,size: 35,),
                    SizedBox(height: 10,),
                    Text('Congratulations you won the lottery, your number is  $x',textAlign: TextAlign.center,)
                  ],)
                    :
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Icon(Icons.error,size: 35,),
                  SizedBox(height: 10,),
                  Text('Better luck next time your number is $x try again',textAlign: TextAlign.center,)
                ],),
              ),
            )
        ],),
        floatingActionButton: FloatingActionButton(
          onPressed: (){

            x=random.nextInt(6);
            print(x);

            setState(() {

            });

            print(x.toString());
          },
          child: Icon(Icons.refresh),

        ),
      ),
    );
  }
}
