import 'package:book_store/ui/home/home.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  static const String login = 'login';
  static const String home = 'home';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const HomeScreen(),
  };
}
