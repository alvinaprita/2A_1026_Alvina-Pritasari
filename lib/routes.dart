import 'package:flutter/material.dart';
import './screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;

    switch (settings.name) {
      case '/about':
        return MaterialPageRoute(builder: (_) => About());
      case '/porto':
        return MaterialPageRoute(builder: (_) => Portofolio());
      case '/Contact':
        return MaterialPageRoute(builder: (_) => Contact());
      // return MaterialPageRoute(builder: (_) => AboutPage(args));
      default:
        return _errorRoute();
    }
  }
}
