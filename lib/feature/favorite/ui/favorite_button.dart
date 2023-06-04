import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../di/di.dart';

class LikeButton extends ConsumerWidget {
  final String photoId;

  const LikeButton({
    required this.photoId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.read(FavoriteProvider.manager);
    final state = ref.watch(FavoriteProvider.stateHolder);

    final isFavorite = state.favoritePhotoIds.any((id) => id == photoId);

    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite_outlined : Icons.favorite_outline_outlined,
      ),
      onPressed: () {
        if (isFavorite) {
          manager.removeFromFavorite(photoId);
        } else {
          manager.addToFavorite(photoId);
        }
      },
    );
  }
}
