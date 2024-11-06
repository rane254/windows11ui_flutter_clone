import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:windows_eleven_desktop/features/desktop/providers/desktop_state_provider.dart';

class Wallpaper extends ConsumerWidget {
  const Wallpaper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wallpaperPath =
        ref.watch(desktopStateProvider.select((state) => state.wallpaperPath));

    return SizedBox.expand(
      child: Image.asset(
        wallpaperPath!,
        fit: BoxFit.cover,
      ),
    );
  }
}
