import 'dart:convert';

import 'package:countries_demo/core/error/failure.dart';
import 'package:countries_demo/core/network/end_points.dart';
import 'package:countries_demo/modules/countries/data/models/country_model.dart';
import 'package:countries_demo/modules/countries/domain/entities/country_entity.dart';
import 'package:http/http.dart' as http;

abstract class CountriesRemoteDataSource {
  Future<List<CountryEntity>> getCountries();
}

class CountriesRemoteDataSourceImpl implements CountriesRemoteDataSource {
  final http.Client client;

  CountriesRemoteDataSourceImpl({
    required this.client,
  });
  @override
  Future<List<CountryEntity>> getCountries() async {
    final countriesUrl = Uri.parse(EndPoints.allCountries);

    final response = await client.get(
      countriesUrl,
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      List<dynamic> jsonList = await json.decode(response.body);

      List<CountryEntity> countries = jsonList.map((json) {
        try {
          return CountryModel.fromJson(json);
        } catch (e) {
          return const CountryEntity(
            name: '',
            flag: '',
            currency: '',
            countryCodeRoot: '',
            countryCodeSuffixes: [],
            capitalCity: '',
          );
        }
      }).toList();

      return countries;
    } else {
      throw const ServerFailure();
    }
  }
}
