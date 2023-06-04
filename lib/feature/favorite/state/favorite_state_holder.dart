import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'favorite_state.dart';

final class FavoriteStateHolder extends StateNotifier<FavoriteState> {
  FavoriteStateHolder() : super(const FavoriteState());

  List<String> get favoritePhotoIds => state.favoritePhotoIds;

  void setFavoritePhotoIds(List<String> ids) {
    state = state.copyWith(favoritePhotoIds: ids);
  }
}
