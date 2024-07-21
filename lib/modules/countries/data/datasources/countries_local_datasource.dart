// import 'dart:convert';

// import 'package:countries_demo/core/error/failure.dart';
// import 'package:countries_demo/modules/countries/data/models/country_model.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// abstract class CountriesLocalDataSource {
//   Future<List<CountryModel>> getLocalCountries();
//   Future<void> saveCountryToLocalStorage(CountryModel countryModel);
// }

// class CountriesLocalDataSourceImpl implements CountriesLocalDataSource {
//   final SharedPreferences sharedPreferences;

//   CountriesLocalDataSourceImpl({required this.sharedPreferences});

//   @override
//   Future<List<CountryModel>> getLocalCountries() {
//     final jsonString = sharedPreferences.getString('CACHED_COUNTRIES');
//     if (jsonString != null) {
//       final cachedCountries = Future.value(
//         List<CountryModel>.from(
//           (json.decode(jsonString) as List).map(
//             (item) => CountryModel.fromJson(item),
//           ),
//         ),
//       );
//       return cachedCountries;
//     } else {
//       throw const CacheFailure();
//     }
//   }

//   @override
//   Future<void> saveCountryToLocalStorage(CountryModel countryModel) async {
//     if (!sharedPreferences.containsKey(countryModel.name)) {
//       // event.country.copyWith(isFavourite: true);

//       await sharedPreferences.setString(
//           countryModel.name, json.encode(countryModel));
//     }
//   }
// }
