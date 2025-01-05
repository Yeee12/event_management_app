import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Ensures the gradient takes up the whole screen
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.purple, // Start color
              Colors.blue, // End color
            ],
          ),
        ),
        child: Center( // Centers the content both horizontally and vertically
          child: Column(
            mainAxisSize: MainAxisSize.min, // Shrinks the column to the size of its content
            children: [
              Row(
                mainAxisSize: MainAxisSize.min, // Shrinks the row to the size of its content
                children:[
                  Text("Red", style: TextStyle(fontSize: 48.sp, color: Colors.white, fontWeight: FontWeight.w700, fontFamily: "Product Sans")),
                  Image.asset("assets/images/red carpet.png", height: 35.h, width: 41.w,),
                ],
              ),
              Text("carpet", style: TextStyle(fontSize: 48.sp, fontWeight: FontWeight.w700),)
            ],
          ),
        ),
      ),
    );
  }
}