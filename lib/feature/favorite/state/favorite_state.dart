import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.freezed.dart';

part 'favorite_state.g.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    @Default([]) List<String> favoritePhotoIds,
  }) = _FavoriteState;

  factory FavoriteState.fromJson(Map<String, Object?> json) =>
      _$FavoriteStateFromJson(json);
}
