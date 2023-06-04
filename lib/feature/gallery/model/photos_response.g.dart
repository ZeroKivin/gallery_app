// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photos_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotosResponse _$PhotosResponseFromJson(Map<String, dynamic> json) =>
    PhotosResponse(
      photos: Photos.fromJson(json['photos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhotosResponseToJson(PhotosResponse instance) =>
    <String, dynamic>{
      'photos': instance.photos,
    };
