import 'package:flutter/material.dart';
import 'package:router_sample/constants.dart';
import 'package:router_sample/screens/fifth_page.dart';
import 'package:router_sample/screens/fourth_page.dart';
import 'package:router_sample/screens/home_page.dart';
import 'package:router_sample/screens/second_page.dart';
import 'package:router_sample/screens/third_page.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => const Homepage());
      case secondPage:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (context) => SecondPage(data: args['data']));
      case thirdPage:
        return MaterialPageRoute(builder: (context) => const ThirdPage());
      case fourthPage:
        return MaterialPageRoute(builder: (context) => const FourthPage());
      case fifthPage:
        return MaterialPageRoute(builder: (context) => const Fifthpage());
      default:
    }

    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text("No Routes Match"),
        ),
      ),
    );
  }
}
