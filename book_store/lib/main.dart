import 'dart:async';

import 'package:book_store/ui/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  return runZonedGuarded(() {
    runApp(const MyApp());
  }, (_, __) {
    //
  });
}

Future<void> setPreferredOrientations() {
  return SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}
