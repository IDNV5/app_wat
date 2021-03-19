import 'package:app_wat/screen/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
      onGenerateRoute: OnGenerateRoute.onGenerateRoute,
    );
  }
}

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
