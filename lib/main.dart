import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';
import 'di/global_provider.dart';
import 'util/logger/logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (errorDetails) {
    logger.e(
      errorDetails.exception,
      null,
      errorDetails.stack,
    );
  };

  final sharedPreferences = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [
        GlobalProvider.sharedPreferences.overrideWithValue(sharedPreferences),
      ],
      child: const App(),
    ),
  );
}
