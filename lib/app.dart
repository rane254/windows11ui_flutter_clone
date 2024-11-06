import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:windows_eleven_desktop/features/desktop/views/desktop_screen.dart';

class Windows11App extends StatelessWidget {
  const Windows11App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _buildTheme(),
      home: const DesktopScreen(),
    );
  }

  ThemeData _buildTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Color(0xFF0078D4),
        brightness: Brightness.light,
      ),
      textTheme: GoogleFonts.interTextTheme(),
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(4),
        ),
        textStyle: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
