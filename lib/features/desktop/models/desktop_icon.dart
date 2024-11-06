import 'package:flutter/material.dart';

class DesktopIcon {
  final String id;
  final String name;
  final String iconPath;
  final Offset position;
  final bool isSelected;

  const DesktopIcon({
    required this.id,
    required this.name,
    required this.iconPath,
    required this.position,
    this.isSelected = false,
  });

  // Simple copyWith method for state updates
  DesktopIcon copyWith({
    String? id,
    String? name,
    String? iconPath,
    Offset? position,
    bool? isSelected,
  }) {
    return DesktopIcon(
      id: id ?? this.id,
      name: name ?? this.name,
      iconPath: iconPath ?? this.iconPath,
      position: position ?? this.position,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
