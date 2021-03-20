import 'package:flutter/material.dart';

class CustomColors {
  static Color primaryTextColour = Colors.white;
  static Color primaryBackgroundColour = Color(0xFF2D2F41);
  static Color primaryMenuBackgroundColour = Color(0xFF242634);

  static Color secondaryBackgroundColour = Color(0xFF181A23);

  static Color dividerColor = Colors.white54;
}

class GradientColours {
  final List<Color> colours;
  GradientColours(this.colours);

  static List<Color> sky = [Color(0xFF6448FE), Color(0xFF5FC6FF)];
  static List<Color> sunset = [Color(0xFFFE6197), Color(0xFFFFB463)];
  static List<Color> sea = [Color(0xFF61A3FE), Color(0xFF63FFD5)];
  static List<Color> mango = [Color(0xFFFFA738), Color(0xFFFFE130)];
  static List<Color> fire = [Color(0xFFFF5DCD), Color(0xFFFF8484)];
}

class GradientTemplate {
  static List<GradientColours> gradientTemplate = [
    GradientColours(GradientColours.sky),
    GradientColours(GradientColours.sunset),
    GradientColours(GradientColours.sea),
    GradientColours(GradientColours.mango),
    GradientColours(GradientColours.fire),
  ];
}