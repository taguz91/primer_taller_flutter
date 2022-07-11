import 'package:book_store/constants/colors.dart';
import 'package:book_store/utils/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book store',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: AppColors.primary,
      ),
      initialRoute: Routes.home,
      routes: Routes.routes,
    );
  }
}
