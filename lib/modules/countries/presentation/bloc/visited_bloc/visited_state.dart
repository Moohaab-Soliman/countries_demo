part of 'visited_bloc.dart';

@freezed
class VisitedState with _$VisitedState {
  const factory VisitedState.initial() = Initial;
  const factory VisitedState.loading() = Loading;

  const factory VisitedState.loaded(
      {required List<CountryEntity> visitedCountries}) = Loaded;
  const factory VisitedState.error({
    required String error,
  }) = Error;
}
