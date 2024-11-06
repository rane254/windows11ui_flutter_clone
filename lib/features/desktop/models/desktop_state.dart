import 'package:windows_eleven_desktop/features/desktop/models/desktop_icon.dart';

class DesktopState {
  final List<DesktopIcon> icons;
  final bool isStartMenuOpen;
  final String? selectedIconId;
  final String? wallpaperPath;

  DesktopState({
    required this.icons,
    this.isStartMenuOpen = false,
    this.selectedIconId,
    this.wallpaperPath = 'assets/images/win_wallpaper.png',
  });

  DesktopState copyWith({
    List<DesktopIcon>? icons,
    bool? isStartMenuOpen,
    String? selectedIconId,
    String? wallpaperPath,
  }) {
    return DesktopState(
      icons: icons ?? this.icons,
      isStartMenuOpen: isStartMenuOpen ?? this.isStartMenuOpen,
      selectedIconId: selectedIconId ?? this.selectedIconId,
      wallpaperPath: wallpaperPath ?? this.wallpaperPath,
    );
  }
}
