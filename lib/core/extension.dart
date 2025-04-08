
import 'package:flutter/material.dart';

extension ColorExtension on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
}