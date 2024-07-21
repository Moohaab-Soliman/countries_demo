import 'package:countries_demo/core/error/failure.dart';
import 'package:countries_demo/core/network/network_info.dart';
import 'package:countries_demo/modules/countries/data/datasources/countries_remote_datasource.dart';
import 'package:countries_demo/modules/countries/domain/entities/country_entity.dart';

import 'package:countries_demo/modules/countries/domain/repositories/countries_repository.dart';

class CountryRepositoryImpl implements CountriesRepository {
  final NetworkInfo networkInfo;
  final CountriesRemoteDataSource countriesRemoteDataSource;

  CountryRepositoryImpl({
    required this.networkInfo,
    required this.countriesRemoteDataSource,
  });
  @override
  Future<List<CountryEntity>> getCountries() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteCountriesData =
            await countriesRemoteDataSource.getCountries();

        return remoteCountriesData;
      } catch (e) {
        ServerFailure(errorCode: e.toString());
        return [];
      }
    } else {
      return [];
    }
  }
}
