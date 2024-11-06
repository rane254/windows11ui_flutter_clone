import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:windows_eleven_desktop/core/constants/assets.dart';
import 'package:windows_eleven_desktop/features/desktop/models/desktop_icon.dart';

final desktopIconsProvider =
    StateNotifierProvider<DesktopIconsNotifier, List<DesktopIcon>>(
  (ref) => DesktopIconsNotifier(),
);

class DesktopIconsNotifier extends StateNotifier<List<DesktopIcon>> {
  DesktopIconsNotifier() : super(defaultIcons);

  void moveIcon(
    String id,
    Offset newPosition,
    Offset delta,
  ) {
    state = [
      for (final icon in state)
        if (icon.id == id) icon.copyWith(position: newPosition) else icon,
    ];
  }

  void toggleSelection(String id) {
    state = [
      for (final icon in state)
        if (icon.id == id)
          icon.copyWith(isSelected: !icon.isSelected)
        else
          icon.copyWith(isSelected: false),
    ];
  }
}
