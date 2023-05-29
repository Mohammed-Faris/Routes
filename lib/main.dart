import 'package:flutter/material.dart';
import 'package:router_sample/constants.dart';
import 'package:router_sample/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Routes.generateRoute,
      initialRoute: homePage,
      debugShowCheckedModeBanner: false,
    );
  }
}
