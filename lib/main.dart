import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int defaultNum = 0;
  int adjustNum = 0;
  String message = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 8),
            Text("$adjustNum", style: TextStyle(fontSize: 100)),
            SizedBox(height: 8),
            Text(message, style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            TextButton(
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(150, 50)),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero))),
                onPressed: () {
                  var incremNum = defaultNum + 1;
                  print(incremNum);
                  var messageTemp = "";
                  setState(() {
                    defaultNum = incremNum.round();
                    adjustNum = defaultNum;
                    message = messageTemp;
                  });
                },
                child: Text("Increment", style: TextStyle(fontSize: 20))),
            SizedBox(height: 20),
            TextButton(
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(150, 50)),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero))),
                onPressed: () {
                  var incremNum = defaultNum - 1;
                  print(incremNum);
                  var messageTemp = "";
                  if (adjustNum == 0) {
                    messageTemp = "Number cannot be less than 0";
                  } else {
                    messageTemp = "";
                  }
                  setState(() {
                    defaultNum = incremNum.round();
                    adjustNum = defaultNum;
                    message = messageTemp;
                  });
                },
                child: Text("Decrement", style: TextStyle(fontSize: 20))),
            SizedBox(height: 20),
            TextButton(
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(150, 50)),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero))),
                onPressed: () {
                  var incremNum = defaultNum * 0;
                  print(incremNum);
                  var messageTemp = "";
                  setState(() {
                    defaultNum = incremNum.round();
                    adjustNum = defaultNum;
                  });
                },
                child: Text("Reset", style: TextStyle(fontSize: 20))),
          ],
        ),
      ),
    );
  }
}
