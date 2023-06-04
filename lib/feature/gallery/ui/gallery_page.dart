import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../favorite/ui/favorite_button.dart';
import '../di/di.dart';
import '../model/photo.dart';

class GalleryPage extends ConsumerStatefulWidget {
  const GalleryPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends ConsumerState<GalleryPage> {
  @override
  void initState() {
    super.initState();

    ref.read(GalleryProvider.manager).init();
  }

  @override
  void dispose() {
    ref.read(GalleryProvider.manager).dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(GalleryProvider.stateHolder);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Галерея'),
      ),
      body: SafeArea(
        child: _PhotosWidget(
          photos: state.photos,
        ),
      ),
    );
  }
}

class _PhotosWidget extends ConsumerWidget {
  final List<Photo> photos;

  const _PhotosWidget({
    required this.photos,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.read(GalleryProvider.manager);

    if (photos.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 20,
      ),
      controller: manager.scrollController,
      itemCount: photos.length,
      itemBuilder: (_, index) {
        final photo = photos[index];

        return _PhotoCard(
          photo: photo,
        );
      },
      separatorBuilder: (_, __) => const SizedBox(
        height: 40,
      ),
    );
  }
}

class _PhotoCard extends ConsumerWidget {
  final Photo photo;

  const _PhotoCard({
    required this.photo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.read(GalleryProvider.manager);

    return Column(
      children: [
        GestureDetector(
          onTap: () => manager.openPhotoPage(photo),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            child: Hero(
              tag: photo.id,
              child: CachedNetworkImage(
                imageUrl: photo.url,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        _PhotoCardToolBar(
          photoId: photo.id,
        ),
      ],
    );
  }
}

class _PhotoCardToolBar extends StatelessWidget {
  final String photoId;

  const _PhotoCardToolBar({
    required this.photoId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          LikeButton(
            photoId: photoId,
          ),
          const IconButton(
            icon: Icon(
              Icons.comment_outlined,
            ),
            onPressed: null,
          ),
          const IconButton(
            icon: Icon(
              Icons.share_outlined,
            ),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
