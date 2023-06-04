import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../../favorite/ui/favorite_button.dart';
import '../model/photo.dart';

class PhotoPage extends StatelessWidget {
  final Photo photo;

  const PhotoPage({
    required this.photo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CloseButton(),
        actions: [
          LikeButton(
            photoId: photo.id,
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
      body: SafeArea(
        child: PhotoView(
          minScale: PhotoViewComputedScale.contained,
          heroAttributes: PhotoViewHeroAttributes(
            tag: photo.id,
          ),
          imageProvider: CachedNetworkImageProvider(
            photo.url,
          ),
        ),
      ),
    );
  }
}
