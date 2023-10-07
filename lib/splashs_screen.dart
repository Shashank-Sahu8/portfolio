import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_portfolio/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> thispage(),
      ));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:new Container(
        color: Colors.pink[500],
        child: new Center(
          child: new Text("Portfolio",style: TextStyle(fontFamily: 'PermanentMarker-Regular',fontSize: 50,fontWeight: FontWeight.bold,shadows: [Shadow(blurRadius: 10.0,color: Colors.blueGrey,offset: Offset(1.0,1.0))]),),
        ),
      )
    );
  }
}
