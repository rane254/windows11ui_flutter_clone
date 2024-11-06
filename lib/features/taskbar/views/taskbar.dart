import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:windows_eleven_desktop/core/constants/dimensions.dart';
import 'package:windows_eleven_desktop/features/desktop/providers/desktop_state_provider.dart';

class TaskbarWidget extends ConsumerWidget {
  const TaskbarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final desktopNotifier = ref.read(desktopStateProvider.notifier);

    return Positioned(
      left: 0,
      bottom: 0,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: AppDimensions.taskbarHeight,
        decoration: BoxDecoration(
          color: Colors.black87,
        ),
        child: Center(
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    debugPrint("Start Menu Tapped");
                    desktopNotifier.toggleStartMenu();
                  },
                  child: Icon(
                    size: 30,
                    Icons.window_sharp,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(width: 15),
                Icon(
                  size: 30,
                  Icons.search_sharp,
                  color: Colors.white,
                ),
                SizedBox(width: 15),
                Image.asset(
                  'icons/win_file_ic.png',
                  width: 35,
                ),
                SizedBox(width: 15),
                Image.asset(
                  'icons/win_chrome_ic.png',
                  width: 35,
                ),
                SizedBox(width: 15),
                Image.asset(
                  'icons/win_youtube_ic.png',
                  width: 35,
                ),
                SizedBox(width: 15),
                Image.asset(
                  'icons/whatsapp_ic.png',
                  width: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
