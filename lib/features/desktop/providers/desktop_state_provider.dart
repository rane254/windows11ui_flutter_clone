import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:windows_eleven_desktop/core/constants/assets.dart';
import 'package:windows_eleven_desktop/features/desktop/models/desktop_state.dart';

final desktopStateProvider =
    StateNotifierProvider<DesktopSateNotifier, DesktopState>(
  (ref) => DesktopSateNotifier(),
);

class DesktopSateNotifier extends StateNotifier<DesktopState> {
  DesktopSateNotifier() : super(DesktopState(icons: defaultIcons));

  void toggleStartMenu() {
    state = state.copyWith(isStartMenuOpen: !state.isStartMenuOpen);
  }

  void changeWallpaper(String path) {
    state = state.copyWith(wallpaperPath: state.wallpaperPath);
  }
}
