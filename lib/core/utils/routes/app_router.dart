import 'package:countries_demo/main.dart';
import 'package:countries_demo/modules/countries/presentation/ui/screens/countries_screen.dart';
import 'package:countries_demo/modules/countries/presentation/ui/screens/favourite_screen.dart';
import 'package:countries_demo/modules/countries/presentation/ui/screens/visited_screen.dart';

import 'package:flutter/material.dart';

class AppRouter {
  static const String initialRoute = '/';
  static const String allCountriesRoute = '/allCountriesRoute';
  static const String favouriteRoute = '/favouriteRoute';
  static const String visitedRoute = '/visitedRoute';
}

final Map<String, Widget Function(BuildContext)> routes = {
  AppRouter.initialRoute: (_) => const MyHomePage(),
  AppRouter.allCountriesRoute: (_) => const CountriesScreen(),
  AppRouter.favouriteRoute: (_) => const FavouriteScreen(),
  AppRouter.visitedRoute: (_) => const VisitedScreen(),
};
