import 'package:flutter/material.dart';
import 'package:todo_app/ui/home/home.dart';

class Routes {
  Routes._();

  static const String home = 'home';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => HomeScreen(),
  };
}
