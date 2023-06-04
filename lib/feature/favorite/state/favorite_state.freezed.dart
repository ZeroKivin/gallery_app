// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteState _$FavoriteStateFromJson(Map<String, dynamic> json) {
  return _FavoriteState.fromJson(json);
}

/// @nodoc
mixin _$FavoriteState {
  List<String> get favoritePhotoIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteStateCopyWith<FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
  @useResult
  $Res call({List<String> favoritePhotoIds});
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoritePhotoIds = null,
  }) {
    return _then(_value.copyWith(
      favoritePhotoIds: null == favoritePhotoIds
          ? _value.favoritePhotoIds
          : favoritePhotoIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoriteStateCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory _$$_FavoriteStateCopyWith(
          _$_FavoriteState value, $Res Function(_$_FavoriteState) then) =
      __$$_FavoriteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> favoritePhotoIds});
}

/// @nodoc
class __$$_FavoriteStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$_FavoriteState>
    implements _$$_FavoriteStateCopyWith<$Res> {
  __$$_FavoriteStateCopyWithImpl(
      _$_FavoriteState _value, $Res Function(_$_FavoriteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoritePhotoIds = null,
  }) {
    return _then(_$_FavoriteState(
      favoritePhotoIds: null == favoritePhotoIds
          ? _value._favoritePhotoIds
          : favoritePhotoIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteState implements _FavoriteState {
  const _$_FavoriteState({final List<String> favoritePhotoIds = const []})
      : _favoritePhotoIds = favoritePhotoIds;

  factory _$_FavoriteState.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteStateFromJson(json);

  final List<String> _favoritePhotoIds;
  @override
  @JsonKey()
  List<String> get favoritePhotoIds {
    if (_favoritePhotoIds is EqualUnmodifiableListView)
      return _favoritePhotoIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoritePhotoIds);
  }

  @override
  String toString() {
    return 'FavoriteState(favoritePhotoIds: $favoritePhotoIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteState &&
            const DeepCollectionEquality()
                .equals(other._favoritePhotoIds, _favoritePhotoIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favoritePhotoIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteStateCopyWith<_$_FavoriteState> get copyWith =>
      __$$_FavoriteStateCopyWithImpl<_$_FavoriteState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteStateToJson(
      this,
    );
  }
}

abstract class _FavoriteState implements FavoriteState {
  const factory _FavoriteState({final List<String> favoritePhotoIds}) =
      _$_FavoriteState;

  factory _FavoriteState.fromJson(Map<String, dynamic> json) =
      _$_FavoriteState.fromJson;

  @override
  List<String> get favoritePhotoIds;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteStateCopyWith<_$_FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}
