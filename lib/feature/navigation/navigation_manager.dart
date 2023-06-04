import 'package:flutter/material.dart';

import '../gallery/model/photo.dart';
import '../gallery/ui/photo_page.dart';

final class NavigationManager {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  void openPhotoPage(Photo photo) {
    navigatorKey.currentState?.push(
      MaterialPageRoute(
        builder: (_) => PhotoPage(photo: photo),
      ),
    );
  }
}
