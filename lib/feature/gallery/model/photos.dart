import 'package:json_annotation/json_annotation.dart';

import 'photo.dart';

part 'photos.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class Photos {
  Photos({
    required this.page,
    required this.pages,
    required this.photo,
  });

  final int page;
  final int pages;
  final List<Photo> photo;

  factory Photos.fromJson(Map<String, dynamic> json) {
    return _$PhotosFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PhotosToJson(this);
}
