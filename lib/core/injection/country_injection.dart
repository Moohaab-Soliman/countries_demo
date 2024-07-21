import 'package:countries_demo/core/injection/injection_container.dart';
import 'package:countries_demo/core/network/network_info.dart';

import 'package:countries_demo/modules/countries/data/datasources/countries_remote_datasource.dart';
import 'package:countries_demo/modules/countries/data/repository/countries_repository_impl.dart';
import 'package:countries_demo/modules/countries/domain/repositories/countries_repository.dart';
import 'package:countries_demo/modules/countries/domain/usecases/get_countries.dart';
import 'package:countries_demo/modules/countries/presentation/bloc/all_countries_bloc/country_bloc.dart';
import 'package:countries_demo/modules/countries/presentation/bloc/bloc/favourite_bloc.dart';
import 'package:countries_demo/modules/countries/presentation/bloc/visited_bloc/visited_bloc.dart';

import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CountryInjection {
  CountryInjection() {
    // Bloc(),
    ic.registerLazySingleton(() => CountryBloc(
          getCountriesUC: ic(),
        ));
    ic.registerLazySingleton(() => VisitedBloc());
    ic.registerLazySingleton(() => FavouriteBloc());

    // usecases

    ic.registerLazySingleton(() => GetCountriesUC(countriesRepository: ic()));

    // repo

    ic.registerLazySingleton<CountriesRepository>(
      () => CountryRepositoryImpl(
        networkInfo: ic(),
        countriesRemoteDataSource: ic(),
      ),
    );

    //datasource

    ic.registerLazySingleton<CountriesRemoteDataSource>(
        () => CountriesRemoteDataSourceImpl(client: ic()));

    // ic.registerLazySingleton<CountriesLocalDataSource>(
    //     () => CountriesLocalDataSourceImpl(sharedPreferences: ic()));

    // core

    ic.registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(internetConnectionChecker: ic()));

    //External

    ic.registerLazySingleton(() => http.Client());
    ic.registerLazySingleton(() => InternetConnectionChecker());
    ic.registerLazySingleton(() => SharedPreferences);
  }
}
