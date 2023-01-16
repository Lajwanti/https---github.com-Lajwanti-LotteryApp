import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int x = 0;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 10.0,
          backgroundColor: Colors.black.withOpacity(0.5),
          title: const Center(child: Text("Lottery App")),
        ),
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("Lottery winning number is 6")),
                SizedBox(height:15),
                Container(
                  height: 250,
                  width: 300,
                  decoration:  BoxDecoration(
                    color: x==6 ?Colors.indigo.withOpacity(0.4):Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: x==6 ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.done_all,color: Colors.green,size: 35,),
                        SizedBox(height: 40),
                        Text("Congratulation you have won the lottery, your number is $x", textAlign: TextAlign.center,),
                      ],
                    ) :Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.error,color: Colors.red,size: 35,),
                        SizedBox(height: 40),
                        Text("Better luck for next time your number is $x\ntry again", textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                )
                
              ],
            )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
           // print(random.nextInt(10));
            x = random.nextInt(10);
            print(x.toString());
            setState(() {

            });
            print("tap");
          },
          backgroundColor: Colors.black.withOpacity(0.5),
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
