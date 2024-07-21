// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() reload,
    required TResult Function(String searchText) search,
    required TResult Function(CountryEntity country) favourite,
    required TResult Function(CountryEntity country) visited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? reload,
    TResult? Function(String searchText)? search,
    TResult? Function(CountryEntity country)? favourite,
    TResult? Function(CountryEntity country)? visited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? reload,
    TResult Function(String searchText)? search,
    TResult Function(CountryEntity country)? favourite,
    TResult Function(CountryEntity country)? visited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(Reload value) reload,
    required TResult Function(Search value) search,
    required TResult Function(Favourite value) favourite,
    required TResult Function(Visited value) visited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Reload value)? reload,
    TResult? Function(Search value)? search,
    TResult? Function(Favourite value)? favourite,
    TResult? Function(Visited value)? visited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Reload value)? reload,
    TResult Function(Search value)? search,
    TResult Function(Favourite value)? favourite,
    TResult Function(Visited value)? visited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryEventCopyWith<$Res> {
  factory $CountryEventCopyWith(
          CountryEvent value, $Res Function(CountryEvent) then) =
      _$CountryEventCopyWithImpl<$Res, CountryEvent>;
}

/// @nodoc
class _$CountryEventCopyWithImpl<$Res, $Val extends CountryEvent>
    implements $CountryEventCopyWith<$Res> {
  _$CountryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$CountryEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchImpl implements Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'CountryEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() reload,
    required TResult Function(String searchText) search,
    required TResult Function(CountryEntity country) favourite,
    required TResult Function(CountryEntity country) visited,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? reload,
    TResult? Function(String searchText)? search,
    TResult? Function(CountryEntity country)? favourite,
    TResult? Function(CountryEntity country)? visited,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? reload,
    TResult Function(String searchText)? search,
    TResult Function(CountryEntity country)? favourite,
    TResult Function(CountryEntity country)? visited,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(Reload value) reload,
    required TResult Function(Search value) search,
    required TResult Function(Favourite value) favourite,
    required TResult Function(Visited value) visited,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Reload value)? reload,
    TResult? Function(Search value)? search,
    TResult? Function(Favourite value)? favourite,
    TResult? Function(Visited value)? visited,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Reload value)? reload,
    TResult Function(Search value)? search,
    TResult Function(Favourite value)? favourite,
    TResult Function(Visited value)? visited,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class Fetch implements CountryEvent {
  const factory Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$ReloadImplCopyWith<$Res> {
  factory _$$ReloadImplCopyWith(
          _$ReloadImpl value, $Res Function(_$ReloadImpl) then) =
      __$$ReloadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReloadImplCopyWithImpl<$Res>
    extends _$CountryEventCopyWithImpl<$Res, _$ReloadImpl>
    implements _$$ReloadImplCopyWith<$Res> {
  __$$ReloadImplCopyWithImpl(
      _$ReloadImpl _value, $Res Function(_$ReloadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReloadImpl implements Reload {
  const _$ReloadImpl();

  @override
  String toString() {
    return 'CountryEvent.reload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReloadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() reload,
    required TResult Function(String searchText) search,
    required TResult Function(CountryEntity country) favourite,
    required TResult Function(CountryEntity country) visited,
  }) {
    return reload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? reload,
    TResult? Function(String searchText)? search,
    TResult? Function(CountryEntity country)? favourite,
    TResult? Function(CountryEntity country)? visited,
  }) {
    return reload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? reload,
    TResult Function(String searchText)? search,
    TResult Function(CountryEntity country)? favourite,
    TResult Function(CountryEntity country)? visited,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(Reload value) reload,
    required TResult Function(Search value) search,
    required TResult Function(Favourite value) favourite,
    required TResult Function(Visited value) visited,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Reload value)? reload,
    TResult? Function(Search value)? search,
    TResult? Function(Favourite value)? favourite,
    TResult? Function(Visited value)? visited,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Reload value)? reload,
    TResult Function(Search value)? search,
    TResult Function(Favourite value)? favourite,
    TResult Function(Visited value)? visited,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class Reload implements CountryEvent {
  const factory Reload() = _$ReloadImpl;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchText});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$CountryEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
  }) {
    return _then(_$SearchImpl(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements Search {
  const _$SearchImpl({required this.searchText});

  @override
  final String searchText;

  @override
  String toString() {
    return 'CountryEvent.search(searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() reload,
    required TResult Function(String searchText) search,
    required TResult Function(CountryEntity country) favourite,
    required TResult Function(CountryEntity country) visited,
  }) {
    return search(searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? reload,
    TResult? Function(String searchText)? search,
    TResult? Function(CountryEntity country)? favourite,
    TResult? Function(CountryEntity country)? visited,
  }) {
    return search?.call(searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? reload,
    TResult Function(String searchText)? search,
    TResult Function(CountryEntity country)? favourite,
    TResult Function(CountryEntity country)? visited,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(Reload value) reload,
    required TResult Function(Search value) search,
    required TResult Function(Favourite value) favourite,
    required TResult Function(Visited value) visited,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Reload value)? reload,
    TResult? Function(Search value)? search,
    TResult? Function(Favourite value)? favourite,
    TResult? Function(Visited value)? visited,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Reload value)? reload,
    TResult Function(Search value)? search,
    TResult Function(Favourite value)? favourite,
    TResult Function(Visited value)? visited,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search implements CountryEvent {
  const factory Search({required final String searchText}) = _$SearchImpl;

  String get searchText;
  @JsonKey(ignore: true)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavouriteImplCopyWith<$Res> {
  factory _$$FavouriteImplCopyWith(
          _$FavouriteImpl value, $Res Function(_$FavouriteImpl) then) =
      __$$FavouriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CountryEntity country});
}

/// @nodoc
class __$$FavouriteImplCopyWithImpl<$Res>
    extends _$CountryEventCopyWithImpl<$Res, _$FavouriteImpl>
    implements _$$FavouriteImplCopyWith<$Res> {
  __$$FavouriteImplCopyWithImpl(
      _$FavouriteImpl _value, $Res Function(_$FavouriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
  }) {
    return _then(_$FavouriteImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryEntity,
    ));
  }
}

/// @nodoc

class _$FavouriteImpl implements Favourite {
  const _$FavouriteImpl({required this.country});

  @override
  final CountryEntity country;

  @override
  String toString() {
    return 'CountryEvent.favourite(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteImpl &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteImplCopyWith<_$FavouriteImpl> get copyWith =>
      __$$FavouriteImplCopyWithImpl<_$FavouriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() reload,
    required TResult Function(String searchText) search,
    required TResult Function(CountryEntity country) favourite,
    required TResult Function(CountryEntity country) visited,
  }) {
    return favourite(country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? reload,
    TResult? Function(String searchText)? search,
    TResult? Function(CountryEntity country)? favourite,
    TResult? Function(CountryEntity country)? visited,
  }) {
    return favourite?.call(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? reload,
    TResult Function(String searchText)? search,
    TResult Function(CountryEntity country)? favourite,
    TResult Function(CountryEntity country)? visited,
    required TResult orElse(),
  }) {
    if (favourite != null) {
      return favourite(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(Reload value) reload,
    required TResult Function(Search value) search,
    required TResult Function(Favourite value) favourite,
    required TResult Function(Visited value) visited,
  }) {
    return favourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Reload value)? reload,
    TResult? Function(Search value)? search,
    TResult? Function(Favourite value)? favourite,
    TResult? Function(Visited value)? visited,
  }) {
    return favourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Reload value)? reload,
    TResult Function(Search value)? search,
    TResult Function(Favourite value)? favourite,
    TResult Function(Visited value)? visited,
    required TResult orElse(),
  }) {
    if (favourite != null) {
      return favourite(this);
    }
    return orElse();
  }
}

abstract class Favourite implements CountryEvent {
  const factory Favourite({required final CountryEntity country}) =
      _$FavouriteImpl;

  CountryEntity get country;
  @JsonKey(ignore: true)
  _$$FavouriteImplCopyWith<_$FavouriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VisitedImplCopyWith<$Res> {
  factory _$$VisitedImplCopyWith(
          _$VisitedImpl value, $Res Function(_$VisitedImpl) then) =
      __$$VisitedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CountryEntity country});
}

/// @nodoc
class __$$VisitedImplCopyWithImpl<$Res>
    extends _$CountryEventCopyWithImpl<$Res, _$VisitedImpl>
    implements _$$VisitedImplCopyWith<$Res> {
  __$$VisitedImplCopyWithImpl(
      _$VisitedImpl _value, $Res Function(_$VisitedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
  }) {
    return _then(_$VisitedImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryEntity,
    ));
  }
}

/// @nodoc

class _$VisitedImpl implements Visited {
  const _$VisitedImpl({required this.country});

  @override
  final CountryEntity country;

  @override
  String toString() {
    return 'CountryEvent.visited(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitedImpl &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VisitedImplCopyWith<_$VisitedImpl> get copyWith =>
      __$$VisitedImplCopyWithImpl<_$VisitedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() reload,
    required TResult Function(String searchText) search,
    required TResult Function(CountryEntity country) favourite,
    required TResult Function(CountryEntity country) visited,
  }) {
    return visited(country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? reload,
    TResult? Function(String searchText)? search,
    TResult? Function(CountryEntity country)? favourite,
    TResult? Function(CountryEntity country)? visited,
  }) {
    return visited?.call(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? reload,
    TResult Function(String searchText)? search,
    TResult Function(CountryEntity country)? favourite,
    TResult Function(CountryEntity country)? visited,
    required TResult orElse(),
  }) {
    if (visited != null) {
      return visited(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(Reload value) reload,
    required TResult Function(Search value) search,
    required TResult Function(Favourite value) favourite,
    required TResult Function(Visited value) visited,
  }) {
    return visited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Reload value)? reload,
    TResult? Function(Search value)? search,
    TResult? Function(Favourite value)? favourite,
    TResult? Function(Visited value)? visited,
  }) {
    return visited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(Reload value)? reload,
    TResult Function(Search value)? search,
    TResult Function(Favourite value)? favourite,
    TResult Function(Visited value)? visited,
    required TResult orElse(),
  }) {
    if (visited != null) {
      return visited(this);
    }
    return orElse();
  }
}

abstract class Visited implements CountryEvent {
  const factory Visited({required final CountryEntity country}) = _$VisitedImpl;

  CountryEntity get country;
  @JsonKey(ignore: true)
  _$$VisitedImplCopyWith<_$VisitedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
