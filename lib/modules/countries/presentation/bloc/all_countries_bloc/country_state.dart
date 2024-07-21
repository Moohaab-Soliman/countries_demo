import 'package:countries_demo/modules/countries/domain/entities/country_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_state.freezed.dart';

@freezed
class CountryState with _$CountryState {
  const factory CountryState.initial() = Initial;
  const factory CountryState.loading() = Loading;
  const factory CountryState.loaded({
    required List<CountryEntity> countries,
  }) = Loaded;
  const factory CountryState.searching() = Searching;

  const factory CountryState.searched({
    required List<CountryEntity> searched,
  }) = Searched;

  const factory CountryState.error({
    required String error,
  }) = Error;
}
