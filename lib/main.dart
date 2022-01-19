import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jbxapp/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home:  MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    Timer(Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> login()));
    });
    // TODO: implement initState
    super.initState();

  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: Container(

          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/logo.png")
            ),
              color: Color(0xff1a1919)
          ),
        )
    )
    );
  }
}
