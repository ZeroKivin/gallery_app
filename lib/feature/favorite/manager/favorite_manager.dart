import 'package:collection/collection.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../util/life_cycle/life_cycle.dart';
import '../state/favorite_state_holder.dart';

final class FavoriteManager implements LifeCycle {
  final FavoriteStateHolder _stateHolder;
  final SharedPreferences _sharedPreferences;

  static const String _favoriteIdsKey = 'favorite_ids';

  FavoriteManager({
    required FavoriteStateHolder stateHolder,
    required SharedPreferences sharedPreferences,
  })  : _stateHolder = stateHolder,
        _sharedPreferences = sharedPreferences;

  @override
  void init() {
    _restoreStateFromCache();
  }

  void addToFavorite(String photoId) {
    _stateHolder.setFavoritePhotoIds(
      [..._stateHolder.favoritePhotoIds, photoId],
    );
    _cachedFavoriteIds();
  }

  void removeFromFavorite(String photoId) {
    _stateHolder.setFavoritePhotoIds(
      _stateHolder.favoritePhotoIds.whereNot((id) => id == photoId).toList(),
    );
    _cachedFavoriteIds();
  }

  @override
  void dispose() {}

  void _restoreStateFromCache() {
    final favoriteIds = _sharedPreferences.getStringList(_favoriteIdsKey) ?? [];
    _stateHolder.setFavoritePhotoIds(favoriteIds);
  }

  Future<void> _cachedFavoriteIds() async {
    await _sharedPreferences.setStringList(
      _favoriteIdsKey,
      _stateHolder.favoritePhotoIds,
    );
  }
}
