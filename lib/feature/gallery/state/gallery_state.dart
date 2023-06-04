import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/photo.dart';

part 'gallery_state.freezed.dart';

@freezed
class GalleryState with _$GalleryState {
  const factory GalleryState({
    @Default([]) List<Photo> photos,
  }) = _GalleryState;
}
