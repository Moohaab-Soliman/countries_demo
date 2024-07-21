import 'dart:convert';

import 'package:countries_demo/core/base_usecase.dart';
import 'package:countries_demo/core/error/failure.dart';

import 'package:countries_demo/modules/countries/data/models/country_model.dart';

import 'package:countries_demo/modules/countries/domain/entities/country_entity.dart';
import 'package:countries_demo/modules/countries/domain/usecases/get_countries.dart';
import 'package:countries_demo/modules/countries/presentation/bloc/all_countries_bloc/country_event.dart';
import 'package:countries_demo/modules/countries/presentation/bloc/all_countries_bloc/country_state.dart';
import 'package:dartz/dartz.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  final GetCountriesUC getCountriesUC;

  CountryBloc({
    required this.getCountriesUC,
  }) : super(const CountryState.initial()) {
    List<CountryEntity> allCountries = [];
    on<Fetch>((event, emit) async {
      emit(const Loading());

      Either<Failure, List<CountryEntity>> result =
          await getCountriesUC.call(NoParams());

      result.fold(
          (failure) => emit(Error(
                error: failure.toString(),
              )), (content) {
        allCountries = content;
        emit(
          Loaded(countries: content),
        );
      });
    });

    on<Visited>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();
      CountryEntity updatedCountry = event.country.copyWith(isVisited: true);

      Map<String, dynamic> countryJson = CountryModel(
        name: updatedCountry.name,
        countryCodeRoot: updatedCountry.countryCodeRoot,
        countryCodeSuffixes: updatedCountry.countryCodeSuffixes,
        currency: updatedCountry.currency,
        capitalCity: updatedCountry.capitalCity,
        flag: updatedCountry.flag,
        isVisited: updatedCountry.isVisited,
        isFavourite: updatedCountry.isFavourite,
      ).toJson();

      if (prefs.containsKey(event.country.name)) {
        String? countryString = prefs.getString(event.country.name);
        if (countryString != null) {
          Map<String, dynamic> existingCountryJson = json.decode(countryString);
          CountryEntity existingCountry =
              CountryModel.fromLocalJson(existingCountryJson);

          // Check if the country is marked as visited but not a favorite
          if (existingCountry.isVisited && !existingCountry.isFavourite) {
            // Remove the country if it's marked as visited but not a favorite
            await prefs.remove(event.country.name);
          } else {
            // Update the country's visited status

            prefs.setString(event.country.name, json.encode(countryJson));
          }
        }
      } else {
        // Add the country to local storage as visited
        prefs.setString(event.country.name, json.encode(countryJson));
      }
    });

    on<Favourite>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();

      CountryEntity updatedCountry = event.country.copyWith(isFavourite: true);

      Map<String, dynamic> countryJson = CountryModel(
        name: updatedCountry.name,
        countryCodeRoot: updatedCountry.countryCodeRoot,
        countryCodeSuffixes: updatedCountry.countryCodeSuffixes,
        currency: updatedCountry.currency,
        capitalCity: updatedCountry.capitalCity,
        flag: updatedCountry.flag,
        isVisited: updatedCountry.isVisited,
        isFavourite: updatedCountry.isFavourite,
      ).toJson();

      if (prefs.containsKey(event.country.name)) {
        String? countryString = prefs.getString(event.country.name);
        if (countryString != null) {
          Map<String, dynamic> existingCountryJson = json.decode(countryString);
          CountryEntity existingCountry =
              CountryModel.fromLocalJson(existingCountryJson);

          // Check if the country is marked as a favorite but not visited
          if (existingCountry.isFavourite && !existingCountry.isVisited) {
            // Remove the country if it's marked as a favorite but not visited

            await prefs.remove(event.country.name);
          } else {
            // Update the country's favorite status
            prefs.setString(event.country.name, json.encode(countryJson));
          }
        }
      } else {
        // Add the country to local storage as a favorite
        prefs.setString(event.country.name, json.encode(countryJson));
      }
    });

    on<Search>(
      (event, emit) async {
        emit(const Searching());

        List<CountryEntity> filteredCountries = allCountries.where((element) {
          String country = element.name.toLowerCase();
          String filter = event.searchText.toLowerCase();
          return country.contains(filter);
        }).toList();
        emit(Searched(searched: filteredCountries));
      },
    );
  }
}
