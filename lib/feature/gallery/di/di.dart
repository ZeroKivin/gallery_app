import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../di/global_provider.dart';
import '../api/gallery_api.dart';
import '../manager/gallery_manager.dart';
import '../state/gallery_state.dart';
import '../state/gallery_state_holder.dart';

final class GalleryProvider {
  static final Provider<GalleryApi> api = Provider(
    (ref) => GalleryApi(
      ref.read(GlobalProvider.networkManager).defaultDio,
    ),
  );

  static final StateNotifierProvider<GalleryStateHolder, GalleryState>
      stateHolder = StateNotifierProvider(
    (_) => GalleryStateHolder(),
  );

  static final Provider<GalleryManager> manager = Provider(
    (ref) => GalleryManager(
      api: ref.read(GalleryProvider.api),
      stateHolder: ref.watch(GalleryProvider.stateHolder.notifier),
      navigationManager: ref.read(GlobalProvider.navigationManager),
      snackBarManager: ref.read(GlobalProvider.snackBarManager),
    ),
  );

  GalleryProvider._();
}
