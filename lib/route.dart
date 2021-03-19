import 'package:app_wat/screen/main_screen.dart';
import 'package:flutter/material.dart';

class OnGenerateRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => MainScreen(),
        );
        break;
      default:
        return MaterialPageRoute(
          builder: (context) => MainScreen(),
        );
    }
  }
}
