import 'dart:convert';

import 'package:countries_demo/modules/countries/data/models/country_model.dart';
import 'package:countries_demo/modules/countries/domain/entities/country_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'favourite_event.dart';
part 'favourite_state.dart';
part 'favourite_bloc.freezed.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  FavouriteBloc() : super(const FavouriteState.initial()) {
    on<GetLocalData>((event, emit) async {
      emit(const Loading());
      final prefs = await SharedPreferences.getInstance();
      final Set<String> keys = prefs.getKeys();

      List<String> listString = [];

      for (String key in keys) {
        listString.add(prefs.getString(key)!);
      }
      List<CountryEntity> decodedList = listString
          .map((e) => CountryModel.fromLocalJson(json.decode(e)))
          .toList();

      List<CountryEntity> favouriteCountries =
          decodedList.where((country) => country.isFavourite == true).toList();

      emit(Loaded(favouriteCountries: favouriteCountries));
    });
  }
}
