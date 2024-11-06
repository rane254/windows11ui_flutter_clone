import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:windows_eleven_desktop/features/custom_cursor/providers/custom_cursor_provider.dart';

class CustomCursor extends ConsumerWidget {
  const CustomCursor({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mousePosition = ref.watch(mousePositionProvider);
    return Positioned(
      left: mousePosition.dx - 4,
      top: mousePosition.dy - 4,
      child: IgnorePointer(
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('icons/cursor_ic.png'),
            ),
          ),
        ),
      ),
    );
  }
}
