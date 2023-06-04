import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'di/global_provider.dart';
import 'feature/favorite/di/di.dart';
import 'feature/gallery/ui/gallery_page.dart';

class App extends ConsumerStatefulWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(FavoriteProvider.manager).init();
    });
  }

  @override
  void dispose() {
    ref.read(FavoriteProvider.manager).dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final navigationManager = ref.read(GlobalProvider.navigationManager);
    final snackBarManager = ref.read(GlobalProvider.snackBarManager);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigationManager.navigatorKey,
      scaffoldMessengerKey: snackBarManager.scaffoldMessengerKey,
      title: 'Gallery App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const GalleryPage(),
    );
  }
}
