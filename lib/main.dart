import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'splash.dart'; // Import your Splash screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Set the design size based on your UI design
      minTextAdapt: true, // Optional
      splitScreenMode: true, // Optional
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Splash(),
        );
      },
    );
  }
}
