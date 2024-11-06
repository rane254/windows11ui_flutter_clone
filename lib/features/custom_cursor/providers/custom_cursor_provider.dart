import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final mousePositionProvider =
    StateNotifierProvider<MousePositionNotifier, Offset>(
  (ref) => MousePositionNotifier(),
);

class MousePositionNotifier extends StateNotifier<Offset> {
  MousePositionNotifier() : super(Offset.zero);

  void updatePosition(Offset newPosition) {
    state = newPosition;
  }
}
