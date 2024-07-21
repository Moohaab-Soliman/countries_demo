import 'package:countries_demo/bloc_observer.dart';
import 'package:countries_demo/core/utils/routes/app_router.dart';
import 'package:countries_demo/modules/countries/presentation/bloc/all_countries_bloc/country_bloc.dart';
import 'package:countries_demo/modules/countries/presentation/bloc/all_countries_bloc/country_event.dart';
import 'package:countries_demo/modules/countries/presentation/bloc/bloc/favourite_bloc.dart';
import 'package:countries_demo/modules/countries/presentation/bloc/visited_bloc/visited_bloc.dart';
import 'package:countries_demo/modules/countries/presentation/ui/screens/countries_screen.dart';
import 'package:countries_demo/modules/countries/presentation/ui/screens/favourite_screen.dart';
import 'package:countries_demo/modules/countries/presentation/ui/screens/visited_screen.dart';

import 'package:countries_demo/core/utils/ui/shared_widgets/bottom_navigation.dart';

import 'package:flutter/material.dart';
import 'package:countries_demo/core/injection/injection_container.dart'
    as container;
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await container.init();

  BlocOverrides.runZoned(
    () {
      runApp(const MyApp());
    },
    blocObserver: AppBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => container.ic<VisitedBloc>()
            ..add(const VisitedEvent.getLocalData()),
        ),
        BlocProvider(
          lazy: false,
          create: (_) => container.ic<CountryBloc>()..add(const Fetch()),
        ),
        BlocProvider(
          lazy: false,
          create: (_) => container.ic<FavouriteBloc>()
            ..add(const FavouriteEvent.getLocalData()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            appBarTheme: AppBarTheme(
              centerTitle: true,
              color: Colors.black.withOpacity(.8),
              titleTextStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontFamily: 'SF',
                fontSize: 15,
              ),
            )),
        routes: routes,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: const [
          CountriesScreen(),
          VisitedScreen(),
          FavouriteScreen(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(
        pageController: pageController,
      ),
    );
  }
}