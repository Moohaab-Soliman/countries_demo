import 'package:countries_demo/modules/countries/domain/entities/country_entity.dart';

abstract class CountriesRepository {
  Future<List<CountryEntity>> getCountries();
}
