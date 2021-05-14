import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import '../home.dart';
//import 'package:quizstar/home.dart';

class splashscreenpage extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreenpage> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => homepage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 10,
      navigateAfterSeconds: homepage(),
      backgroundColor: Colors.yellow,
      title: new Text("BRR Softwares...",textScaleFactor: 2,),
      image: new Image.network('https://www.brrsoftwares.com/assets/img/logo/brr-loader.png'),
      loadingText: Text("Loading..."),
      photoSize: 150.0,
      loaderColor: Colors.blue,

    );
  }
}