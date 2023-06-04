import 'package:flutter/cupertino.dart';
import 'package:gallery_app/feature/gallery/api/gallery_api.dart';
import 'package:gallery_app/feature/gallery/state/gallery_state_holder.dart';
import 'package:gallery_app/feature/navigation/navigation_manager.dart';

import '../../../util/life_cycle/life_cycle.dart';
import '../../../util/logger/logger.dart';
import '../../../util/snack_bar/snack_bar_manager.dart';
import '../model/photo.dart';
import '../model/photos_response.dart';

final class GalleryManager implements LifeCycle {
  final GalleryApi _api;
  final GalleryStateHolder _stateHolder;
  final NavigationManager _navigationManager;
  final SnackBarManager _snackBarManager;

  bool _hasNext = true;
  int _page = 1;
  bool _isLoading = false;

  final ScrollController scrollController = ScrollController();

  GalleryManager({
    required GalleryApi api,
    required GalleryStateHolder stateHolder,
    required NavigationManager navigationManager,
    required SnackBarManager snackBarManager,
  })  : _api = api,
        _stateHolder = stateHolder,
        _navigationManager = navigationManager,
        _snackBarManager = snackBarManager;

  @override
  void init() {
    _loadPhotos();

    scrollController.addListener(_updateScrollView);
  }

  void openPhotoPage(Photo photo) => _navigationManager.openPhotoPage(photo);

  @override
  void dispose() {
    scrollController.removeListener(_updateScrollView);

    scrollController.dispose();
  }

  Future<void> _updateScrollView() async {
    if (scrollController.offset >=
            scrollController.position.maxScrollExtent / 3 &&
        !_isLoading) {
      _isLoading = true;
      await _loadPhotos();
      _isLoading = false;
    }
  }

  Future<void> _loadPhotos() async {
    if (!_hasNext) {
      return;
    }

    try {
      final response = await _api.getPhotos(
        groupId: '2707037@N25',
        page: _page,
      );

      final photos = _stateHolder.photos + response.photos.photo;
      _stateHolder.setPhotos(photos);

      _updatePaginationState(response);
    } on Object catch (error, stackTrase) {
      _snackBarManager.showSnackBar('При загрузке фотографий произошла ошибка');

      logger.w(
        'Can\'t load photos with reason: $error',
        error,
        stackTrase,
      );
    } finally {
      _isLoading = false;
    }
  }

  void _updatePaginationState(PhotosResponse response) {
    if (response.photos.page == response.photos.pages) {
      _hasNext = false;
    } else {
      _page++;
    }
  }
}
