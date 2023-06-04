import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../feature/navigation/navigation_manager.dart';
import '../feature/network/network_manager.dart';
import '../util/snack_bar/snack_bar_manager.dart';

final class GlobalProvider {
  static final Provider<NetworkManager> networkManager = Provider(
    (_) => NetworkManager(),
  );

  static final Provider<NavigationManager> navigationManager = Provider(
    (_) => NavigationManager(),
  );

  static final Provider<SnackBarManager> snackBarManager = Provider(
    (_) => SnackBarManager(),
  );

  static final Provider<SharedPreferences> sharedPreferences = Provider(
    (_) => throw UnimplementedError(),
  );

  GlobalProvider._();
}
