import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:windows_eleven_desktop/app.dart';

void main() {
  // Use URL hash strategy for better web support
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(
      child: Windows11App(),
    ),
  );
}
