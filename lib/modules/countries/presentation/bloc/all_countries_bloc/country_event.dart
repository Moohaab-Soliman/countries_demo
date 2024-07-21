import 'package:countries_demo/modules/countries/domain/entities/country_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_event.freezed.dart';

@freezed
class CountryEvent with _$CountryEvent {
  const factory CountryEvent.fetch() = Fetch;
  const factory CountryEvent.reload() = Reload;
  const factory CountryEvent.search({required String searchText}) = Search;
  const factory CountryEvent.favourite({required CountryEntity country}) =
      Favourite;
  const factory CountryEvent.visited({required CountryEntity country}) =
      Visited;
}
