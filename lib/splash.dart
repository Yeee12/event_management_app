import 'package:event_management_app/views/screen/onboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    redirect();
  }

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
              Image.asset("assets/images/logo.png", height: 98.h, width: 145.w),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> redirect() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Onboard()), // Replace YourNextPage with the page you want to navigate to
    );
  }
}
