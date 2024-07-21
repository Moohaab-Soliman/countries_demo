part of 'favourite_bloc.dart';

@freezed
class FavouriteState with _$FavouriteState {
  const factory FavouriteState.initial() = Initial;
  const factory FavouriteState.loading() = Loading;

  const factory FavouriteState.loaded(
      {required List<CountryEntity> favouriteCountries}) = Loaded;
  const factory FavouriteState.error({
    required String error,
  }) = Error;
}
