import 'package:event_management_app/splash.dart';
import 'package:event_management_app/views/screen/login_page.dart';
import 'package:event_management_app/views/screen/onboard.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes {
  static const String splash = '/';
  static const String onboard = "/onboard";
  static const String login = "/login_page";

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      splash: (context) => const Splash(),
      onboard: (context) => const Onboard(),
      login: (context) => const LoginPage(),
    };
  }
}
