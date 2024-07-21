import 'package:equatable/equatable.dart';

class CountryEntity extends Equatable {
  final String name;
  final String countryCodeRoot;
  final List<String> countryCodeSuffixes; // Specify the type for List
  final String currency;
  final String capitalCity;
  final String flag;
  final bool isVisited;
  final bool isFavourite;
  final DateTime? visitedDate;

  const CountryEntity({
    required this.name,
    required this.countryCodeRoot,
    required this.countryCodeSuffixes,
    required this.currency,
    required this.capitalCity,
    required this.flag,
    this.isVisited = false,
    this.isFavourite = false,
    this.visitedDate,
  });

  CountryEntity copyWith({
    String? name,
    String? countryCodeRoot,
    List<String>? countryCodeSuffixes, // Specify the type for List
    String? currency,
    String? capitalCity,
    String? flag,
    bool? isVisited,
    bool? isFavourite,
    DateTime? visitedDate,
  }) {
    return CountryEntity(
      name: name ?? this.name,
      countryCodeRoot: countryCodeRoot ?? this.countryCodeRoot,
      countryCodeSuffixes: countryCodeSuffixes ?? this.countryCodeSuffixes,
      currency: currency ?? this.currency,
      capitalCity: capitalCity ?? this.capitalCity,
      flag: flag ?? this.flag,
      isVisited: isVisited ?? this.isVisited,
      isFavourite: isFavourite ?? this.isFavourite,
      visitedDate: visitedDate ?? this.visitedDate,
    );
  }

  @override
  List<Object?> get props => [
        name,
        countryCodeRoot,
        countryCodeSuffixes,
        currency,
        capitalCity,
        flag,
        isVisited,
        isFavourite,
        visitedDate,
      ];
}
