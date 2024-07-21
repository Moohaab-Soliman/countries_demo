// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visited_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VisitedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLocalData,
    required TResult Function(
            DateTime visitedDate, CountryEntity visitedCountry)
        addDateToVisited,
    required TResult Function() removeVisited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLocalData,
    TResult? Function(DateTime visitedDate, CountryEntity visitedCountry)?
        addDateToVisited,
    TResult? Function()? removeVisited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLocalData,
    TResult Function(DateTime visitedDate, CountryEntity visitedCountry)?
        addDateToVisited,
    TResult Function()? removeVisited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocalData value) getLocalData,
    required TResult Function(AddDateToVisited value) addDateToVisited,
    required TResult Function(RemoveVisited value) removeVisited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLocalData value)? getLocalData,
    TResult? Function(AddDateToVisited value)? addDateToVisited,
    TResult? Function(RemoveVisited value)? removeVisited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocalData value)? getLocalData,
    TResult Function(AddDateToVisited value)? addDateToVisited,
    TResult Function(RemoveVisited value)? removeVisited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitedEventCopyWith<$Res> {
  factory $VisitedEventCopyWith(
          VisitedEvent value, $Res Function(VisitedEvent) then) =
      _$VisitedEventCopyWithImpl<$Res, VisitedEvent>;
}

/// @nodoc
class _$VisitedEventCopyWithImpl<$Res, $Val extends VisitedEvent>
    implements $VisitedEventCopyWith<$Res> {
  _$VisitedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetLocalDataImplCopyWith<$Res> {
  factory _$$GetLocalDataImplCopyWith(
          _$GetLocalDataImpl value, $Res Function(_$GetLocalDataImpl) then) =
      __$$GetLocalDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLocalDataImplCopyWithImpl<$Res>
    extends _$VisitedEventCopyWithImpl<$Res, _$GetLocalDataImpl>
    implements _$$GetLocalDataImplCopyWith<$Res> {
  __$$GetLocalDataImplCopyWithImpl(
      _$GetLocalDataImpl _value, $Res Function(_$GetLocalDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetLocalDataImpl implements GetLocalData {
  const _$GetLocalDataImpl();

  @override
  String toString() {
    return 'VisitedEvent.getLocalData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetLocalDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLocalData,
    required TResult Function(
            DateTime visitedDate, CountryEntity visitedCountry)
        addDateToVisited,
    required TResult Function() removeVisited,
  }) {
    return getLocalData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLocalData,
    TResult? Function(DateTime visitedDate, CountryEntity visitedCountry)?
        addDateToVisited,
    TResult? Function()? removeVisited,
  }) {
    return getLocalData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLocalData,
    TResult Function(DateTime visitedDate, CountryEntity visitedCountry)?
        addDateToVisited,
    TResult Function()? removeVisited,
    required TResult orElse(),
  }) {
    if (getLocalData != null) {
      return getLocalData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocalData value) getLocalData,
    required TResult Function(AddDateToVisited value) addDateToVisited,
    required TResult Function(RemoveVisited value) removeVisited,
  }) {
    return getLocalData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLocalData value)? getLocalData,
    TResult? Function(AddDateToVisited value)? addDateToVisited,
    TResult? Function(RemoveVisited value)? removeVisited,
  }) {
    return getLocalData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocalData value)? getLocalData,
    TResult Function(AddDateToVisited value)? addDateToVisited,
    TResult Function(RemoveVisited value)? removeVisited,
    required TResult orElse(),
  }) {
    if (getLocalData != null) {
      return getLocalData(this);
    }
    return orElse();
  }
}

abstract class GetLocalData implements VisitedEvent {
  const factory GetLocalData() = _$GetLocalDataImpl;
}

/// @nodoc
abstract class _$$AddDateToVisitedImplCopyWith<$Res> {
  factory _$$AddDateToVisitedImplCopyWith(_$AddDateToVisitedImpl value,
          $Res Function(_$AddDateToVisitedImpl) then) =
      __$$AddDateToVisitedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime visitedDate, CountryEntity visitedCountry});
}

/// @nodoc
class __$$AddDateToVisitedImplCopyWithImpl<$Res>
    extends _$VisitedEventCopyWithImpl<$Res, _$AddDateToVisitedImpl>
    implements _$$AddDateToVisitedImplCopyWith<$Res> {
  __$$AddDateToVisitedImplCopyWithImpl(_$AddDateToVisitedImpl _value,
      $Res Function(_$AddDateToVisitedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitedDate = null,
    Object? visitedCountry = null,
  }) {
    return _then(_$AddDateToVisitedImpl(
      visitedDate: null == visitedDate
          ? _value.visitedDate
          : visitedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      visitedCountry: null == visitedCountry
          ? _value.visitedCountry
          : visitedCountry // ignore: cast_nullable_to_non_nullable
              as CountryEntity,
    ));
  }
}

/// @nodoc

class _$AddDateToVisitedImpl implements AddDateToVisited {
  const _$AddDateToVisitedImpl(
      {required this.visitedDate, required this.visitedCountry});

  @override
  final DateTime visitedDate;
  @override
  final CountryEntity visitedCountry;

  @override
  String toString() {
    return 'VisitedEvent.addDateToVisited(visitedDate: $visitedDate, visitedCountry: $visitedCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDateToVisitedImpl &&
            (identical(other.visitedDate, visitedDate) ||
                other.visitedDate == visitedDate) &&
            (identical(other.visitedCountry, visitedCountry) ||
                other.visitedCountry == visitedCountry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visitedDate, visitedCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDateToVisitedImplCopyWith<_$AddDateToVisitedImpl> get copyWith =>
      __$$AddDateToVisitedImplCopyWithImpl<_$AddDateToVisitedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLocalData,
    required TResult Function(
            DateTime visitedDate, CountryEntity visitedCountry)
        addDateToVisited,
    required TResult Function() removeVisited,
  }) {
    return addDateToVisited(visitedDate, visitedCountry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLocalData,
    TResult? Function(DateTime visitedDate, CountryEntity visitedCountry)?
        addDateToVisited,
    TResult? Function()? removeVisited,
  }) {
    return addDateToVisited?.call(visitedDate, visitedCountry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLocalData,
    TResult Function(DateTime visitedDate, CountryEntity visitedCountry)?
        addDateToVisited,
    TResult Function()? removeVisited,
    required TResult orElse(),
  }) {
    if (addDateToVisited != null) {
      return addDateToVisited(visitedDate, visitedCountry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocalData value) getLocalData,
    required TResult Function(AddDateToVisited value) addDateToVisited,
    required TResult Function(RemoveVisited value) removeVisited,
  }) {
    return addDateToVisited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLocalData value)? getLocalData,
    TResult? Function(AddDateToVisited value)? addDateToVisited,
    TResult? Function(RemoveVisited value)? removeVisited,
  }) {
    return addDateToVisited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocalData value)? getLocalData,
    TResult Function(AddDateToVisited value)? addDateToVisited,
    TResult Function(RemoveVisited value)? removeVisited,
    required TResult orElse(),
  }) {
    if (addDateToVisited != null) {
      return addDateToVisited(this);
    }
    return orElse();
  }
}

abstract class AddDateToVisited implements VisitedEvent {
  const factory AddDateToVisited(
      {required final DateTime visitedDate,
      required final CountryEntity visitedCountry}) = _$AddDateToVisitedImpl;

  DateTime get visitedDate;
  CountryEntity get visitedCountry;
  @JsonKey(ignore: true)
  _$$AddDateToVisitedImplCopyWith<_$AddDateToVisitedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveVisitedImplCopyWith<$Res> {
  factory _$$RemoveVisitedImplCopyWith(
          _$RemoveVisitedImpl value, $Res Function(_$RemoveVisitedImpl) then) =
      __$$RemoveVisitedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveVisitedImplCopyWithImpl<$Res>
    extends _$VisitedEventCopyWithImpl<$Res, _$RemoveVisitedImpl>
    implements _$$RemoveVisitedImplCopyWith<$Res> {
  __$$RemoveVisitedImplCopyWithImpl(
      _$RemoveVisitedImpl _value, $Res Function(_$RemoveVisitedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveVisitedImpl implements RemoveVisited {
  const _$RemoveVisitedImpl();

  @override
  String toString() {
    return 'VisitedEvent.removeVisited()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveVisitedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLocalData,
    required TResult Function(
            DateTime visitedDate, CountryEntity visitedCountry)
        addDateToVisited,
    required TResult Function() removeVisited,
  }) {
    return removeVisited();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLocalData,
    TResult? Function(DateTime visitedDate, CountryEntity visitedCountry)?
        addDateToVisited,
    TResult? Function()? removeVisited,
  }) {
    return removeVisited?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLocalData,
    TResult Function(DateTime visitedDate, CountryEntity visitedCountry)?
        addDateToVisited,
    TResult Function()? removeVisited,
    required TResult orElse(),
  }) {
    if (removeVisited != null) {
      return removeVisited();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocalData value) getLocalData,
    required TResult Function(AddDateToVisited value) addDateToVisited,
    required TResult Function(RemoveVisited value) removeVisited,
  }) {
    return removeVisited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLocalData value)? getLocalData,
    TResult? Function(AddDateToVisited value)? addDateToVisited,
    TResult? Function(RemoveVisited value)? removeVisited,
  }) {
    return removeVisited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocalData value)? getLocalData,
    TResult Function(AddDateToVisited value)? addDateToVisited,
    TResult Function(RemoveVisited value)? removeVisited,
    required TResult orElse(),
  }) {
    if (removeVisited != null) {
      return removeVisited(this);
    }
    return orElse();
  }
}

abstract class RemoveVisited implements VisitedEvent {
  const factory RemoveVisited() = _$RemoveVisitedImpl;
}

/// @nodoc
mixin _$VisitedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CountryEntity> visitedCountries) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CountryEntity> visitedCountries)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CountryEntity> visitedCountries)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitedStateCopyWith<$Res> {
  factory $VisitedStateCopyWith(
          VisitedState value, $Res Function(VisitedState) then) =
      _$VisitedStateCopyWithImpl<$Res, VisitedState>;
}

/// @nodoc
class _$VisitedStateCopyWithImpl<$Res, $Val extends VisitedState>
    implements $VisitedStateCopyWith<$Res> {
  _$VisitedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$VisitedStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'VisitedState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CountryEntity> visitedCountries) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CountryEntity> visitedCountries)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CountryEntity> visitedCountries)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements VisitedState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$VisitedStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'VisitedState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CountryEntity> visitedCountries) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CountryEntity> visitedCountries)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CountryEntity> visitedCountries)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements VisitedState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CountryEntity> visitedCountries});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$VisitedStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitedCountries = null,
  }) {
    return _then(_$LoadedImpl(
      visitedCountries: null == visitedCountries
          ? _value._visitedCountries
          : visitedCountries // ignore: cast_nullable_to_non_nullable
              as List<CountryEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl({required final List<CountryEntity> visitedCountries})
      : _visitedCountries = visitedCountries;

  final List<CountryEntity> _visitedCountries;
  @override
  List<CountryEntity> get visitedCountries {
    if (_visitedCountries is EqualUnmodifiableListView)
      return _visitedCountries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_visitedCountries);
  }

  @override
  String toString() {
    return 'VisitedState.loaded(visitedCountries: $visitedCountries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._visitedCountries, _visitedCountries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_visitedCountries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CountryEntity> visitedCountries) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(visitedCountries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CountryEntity> visitedCountries)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(visitedCountries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CountryEntity> visitedCountries)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(visitedCountries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements VisitedState {
  const factory Loaded({required final List<CountryEntity> visitedCountries}) =
      _$LoadedImpl;

  List<CountryEntity> get visitedCountries;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$VisitedStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'VisitedState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CountryEntity> visitedCountries) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CountryEntity> visitedCountries)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CountryEntity> visitedCountries)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements VisitedState {
  const factory Error({required final String error}) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
