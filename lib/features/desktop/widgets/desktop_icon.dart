import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:windows_eleven_desktop/features/desktop/models/desktop_icon.dart';
import 'package:windows_eleven_desktop/features/desktop/providers/desktop_icons_provider.dart';

class DesktopIconWidget extends ConsumerWidget {
  final DesktopIcon icon;
  const DesktopIconWidget({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iconsNotifier = ref.read(desktopIconsProvider.notifier);

    return Positioned(
      left: icon.position.dx,
      top: icon.position.dy,
      child: GestureDetector(
        onTap: () => iconsNotifier.toggleSelection(icon.id),
        onPanUpdate: (details) =>
            iconsNotifier.moveIcon(icon.id, icon.position, details.delta),
        child: Column(),
      ),
    );
  }
}
