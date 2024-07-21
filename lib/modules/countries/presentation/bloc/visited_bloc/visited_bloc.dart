import 'dart:convert';

import 'package:countries_demo/modules/countries/data/models/country_model.dart';
import 'package:countries_demo/modules/countries/domain/entities/country_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'visited_event.dart';
part 'visited_state.dart';
part 'visited_bloc.freezed.dart';

class VisitedBloc extends Bloc<VisitedEvent, VisitedState> {
  VisitedBloc() : super(const VisitedState.initial()) {
    on<GetLocalData>((event, emit) async {
      emit(const Loading());
      final prefs = await SharedPreferences.getInstance();
      final Set<String> keys = prefs.getKeys();
      List<String> listString = [];

      for (String key in keys) {
        listString.add(prefs.getString(key)!);
      }
      List<CountryEntity> decodedList = listString.map((e) {
        return CountryModel.fromLocalJson(json.decode(e));
      }).toList();

      List<CountryEntity> visitedCountries =
          decodedList.where((country) => country.isVisited == true).toList();

      emit(Loaded(visitedCountries: visitedCountries));
    });

    on<AddDateToVisited>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();
      CountryEntity updatedCountry =
          event.visitedCountry.copyWith(visitedDate: event.visitedDate);

      Map<String, dynamic> countryJson = CountryModel(
        name: updatedCountry.name,
        countryCodeRoot: updatedCountry.countryCodeRoot,
        countryCodeSuffixes: updatedCountry.countryCodeSuffixes,
        currency: updatedCountry.currency,
        capitalCity: updatedCountry.capitalCity,
        flag: updatedCountry.flag,
        isVisited: updatedCountry.isVisited,
        isFavourite: updatedCountry.isFavourite,
        visitedDate: updatedCountry.visitedDate,
      ).toJson();

      if (prefs.containsKey(event.visitedCountry.name)) {
        String? countryString = prefs.getString(event.visitedCountry.name);
        if (countryString != null) {
          prefs.setString(event.visitedCountry.name, json.encode(countryJson));
        }
      }

      List<CountryEntity> decodedList = prefs.getKeys().map((key) {
        final String data = prefs.getString(key)!;
        return CountryModel.fromLocalJson(json.decode(data));
      }).toList();

      decodedList.sort((a, b) {
        if ((a.visitedDate == null || a.visitedDate == DateTime(2000)) &&
            (b.visitedDate == null || b.visitedDate == DateTime(2000))) {
          return 0;
        } else if (a.visitedDate == null || a.visitedDate == DateTime(2000)) {
          return 1;
        } else if (b.visitedDate == null || b.visitedDate == DateTime(2000)) {
          return -1;
        }
        return a.visitedDate!.compareTo(b.visitedDate!);
      });

      emit(Loaded(visitedCountries: decodedList));
    });
  }
}
