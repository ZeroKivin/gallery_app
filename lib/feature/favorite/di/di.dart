import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../di/global_provider.dart';
import '../manager/favorite_manager.dart';
import '../state/favorite_state.dart';
import '../state/favorite_state_holder.dart';

final class FavoriteProvider {
  static final StateNotifierProvider<FavoriteStateHolder, FavoriteState>
      stateHolder = StateNotifierProvider(
    (_) => FavoriteStateHolder(),
  );

  static final Provider<FavoriteManager> manager = Provider(
    (ref) => FavoriteManager(
      stateHolder: ref.watch(FavoriteProvider.stateHolder.notifier),
      sharedPreferences: ref.read(GlobalProvider.sharedPreferences),
    ),
  );

  FavoriteProvider._();
}
