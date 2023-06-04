import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';

part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  @JsonSerializable(
    includeIfNull: false,
    fieldRename: FieldRename.snake,
  )
  const factory Photo({
    required String id,
    required String secret,
    required String server,
    required int farm,
  }) = _Photo;

  factory Photo.fromJson(Map<String, Object?> json) => _$PhotoFromJson(json);
}

extension PhotoUrl on Photo {
  String get url =>
      'https://farm$farm.staticflickr.com/$server/${id}_$secret.jpg';
}
