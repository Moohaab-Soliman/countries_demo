import 'package:countries_demo/modules/countries/domain/entities/country_entity.dart';

class CountryModel extends CountryEntity {
  const CountryModel({
    required String name,
    required String countryCodeRoot,
    required List<String> countryCodeSuffixes,
    required String currency,
    required String capitalCity,
    required String flag,
    bool isVisited = false,
    bool isFavourite = false,
    DateTime? visitedDate,
  }) : super(
          name: name,
          countryCodeRoot: countryCodeRoot,
          countryCodeSuffixes: countryCodeSuffixes,
          currency: currency,
          capitalCity: capitalCity,
          flag: flag,
          isVisited: isVisited,
          isFavourite: isFavourite,
          visitedDate: visitedDate,
        );

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
      name: json['name']['common'] ?? '',
      countryCodeRoot: json['idd']['root'] ?? '',
      countryCodeSuffixes: List<String>.from(json['idd']['suffixes']),
      currency: json['currencies'].keys.first ?? '',
      capitalCity: json['capital'][0] ?? '',
      flag: json['flags']['png'] ?? '',
      isVisited: json['isVisited'] ?? false,
      isFavourite: json['isFavourite'] ?? false,
    );
  }

  factory CountryModel.fromLocalJson(Map<String, dynamic> json) {
    return CountryModel(
      name: json['name'] ?? '',
      countryCodeRoot: json['countryCodeRoot'] ?? '',
      countryCodeSuffixes: List<String>.from(json['countryCodeSuffixes']),
      currency: json['currency'] ?? '',
      capitalCity: json['capitalCity'] ?? '',
      flag: json['flag'] ?? '',
      isVisited: json['isVisited'] ?? false,
      isFavourite: json['isFavourite'] ?? false,
      visitedDate: json['visitedDate'] != null
          ? DateTime.tryParse(json['visitedDate'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'countryCodeRoot': countryCodeRoot,
      'countryCodeSuffixes': countryCodeSuffixes,
      'currency': currency,
      'capitalCity': capitalCity,
      'flag': flag,
      'isVisited': isVisited,
      'isFavourite': isFavourite,
      'visitedDate': visitedDate?.toIso8601String(),
    };
  }
}
