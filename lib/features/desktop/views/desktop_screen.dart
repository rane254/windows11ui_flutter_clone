import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:windows_eleven_desktop/core/constants/dimensions.dart';
import 'package:windows_eleven_desktop/features/desktop/providers/desktop_icons_provider.dart';
import 'package:windows_eleven_desktop/features/desktop/providers/desktop_state_provider.dart';
import 'package:windows_eleven_desktop/features/desktop/widgets/wallpaper.dart';
import 'package:windows_eleven_desktop/features/taskbar/views/taskbar.dart';

class DesktopScreen extends ConsumerWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final icons = ref.watch(desktopIconsProvider);
    final state = ref.read(desktopStateProvider.notifier);
    final isStartMenuOpen = ref
        .watch(desktopStateProvider.select((state) => state.isStartMenuOpen));
    return Scaffold(
      body: MouseRegion(
        onHover: (event) {
          // ref
          //     .read(mousePositionProvider.notifier)
          //     .updatePosition(event.position);
        },
        child: Stack(
          children: [
            Wallpaper(),
            TaskbarWidget(),
            if (isStartMenuOpen)
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                left: MediaQuery.sizeOf(context).width * 0.29,
                bottom: isStartMenuOpen ? AppDimensions.taskbarHeight + 5 : 0,
                child: AnimatedOpacity(
                  opacity: isStartMenuOpen ? 1 : 0,
                  duration: const Duration(milliseconds: 200),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.42,
                    height: MediaQuery.sizeOf(context).height * 0.82,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            // CustomCursor(),
          ],
        ),
      ),
    );
  }
}
