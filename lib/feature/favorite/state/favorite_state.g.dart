// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoriteState _$$_FavoriteStateFromJson(Map<String, dynamic> json) =>
    _$_FavoriteState(
      favoritePhotoIds: (json['favoritePhotoIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_FavoriteStateToJson(_$_FavoriteState instance) =>
    <String, dynamic>{
      'favoritePhotoIds': instance.favoritePhotoIds,
    };
