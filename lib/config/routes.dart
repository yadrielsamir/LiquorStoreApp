import 'package:flutter/material.dart';
import 'package:liquor_app/features/presentation/pages/Error.dart';
import 'package:liquor_app/features/presentation/pages/Home.dart';
import 'package:liquor_app/features/presentation/pages/Loading.dart';

class AppRouter{
  Route onGenerateRoute(RouteSettings routeSettings){
    switch (routeSettings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case 'loading':
        return MaterialPageRoute(builder: (_) => const LoadingPage());
      default:
        return MaterialPageRoute(builder: (_) => const ErrorPage());
    }

  }
}
