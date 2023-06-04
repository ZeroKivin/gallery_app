import 'package:json_annotation/json_annotation.dart';

import 'photo.dart';
import 'photos.dart';

part 'photos_response.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class PhotosResponse {
  PhotosResponse({
    required this.photos,
  });

  final Photos photos;

  factory PhotosResponse.fromJson(Map<String, dynamic> json) {
    return _$PhotosResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PhotosResponseToJson(this);
}
