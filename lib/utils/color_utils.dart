
import 'dart:math';
import 'package:flutter/material.dart';

class ColorUtils {
  static List<Color> palette = [
    Colors.blue, Colors.green, Colors.red, Colors.purple, Colors.orange, Colors.teal
  ];
  static Color getNodeColor(int siblingIndex) {
    return palette[siblingIndex % palette.length];
  }
  static Color getLineColor(Color nodeA, Color nodeB) {
    // Pick a color different from both node colors
    for (final color in palette) {
      if (color != nodeA && color != nodeB) return color;
    }
    return Colors.black;
  }
}
