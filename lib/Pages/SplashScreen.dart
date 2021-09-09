import 'dart:async';
import 'package:flutter/material.dart';
import 'package:utopia/Constants/ConstantColor.dart';

import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: ConstantColor.BACKGROUND,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset('assets/bunny.png',
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.height * 0.25,),
              SizedBox(height: 5,),
              Text("UTOPIA", style: TextStyle(color: ConstantColor.FONT_COLOR, fontSize: 30, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}