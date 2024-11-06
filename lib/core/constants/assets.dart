import 'dart:ui';

import 'package:windows_eleven_desktop/features/desktop/models/desktop_icon.dart';

final defaultIcons = [
  DesktopIcon(
    id: '1',
    name: 'This PC',
    iconPath: 'assets/icons/win_pc_ic.png',
    position: const Offset(0, 0),
  ),
  DesktopIcon(
    id: '2',
    name: 'Recycle Bin',
    iconPath: 'assets/icons/empty_bin_ic.png',
    position: const Offset(0, 100),
  ),
  DesktopIcon(
    id: '3',
    name: 'Downloads',
    iconPath: 'assets/icons/win_downloads_ic.png',
    position: const Offset(0, 0),
  ),
  // Add more default icons as needed
];
