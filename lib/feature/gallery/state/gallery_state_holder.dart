import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/photo.dart';
import 'gallery_state.dart';

final class GalleryStateHolder extends StateNotifier<GalleryState> {
  GalleryStateHolder() : super(const GalleryState());

  List<Photo> get photos => state.photos;

  void setPhotos(List<Photo> photos) {
    state = state.copyWith(photos: photos);
  }
}
